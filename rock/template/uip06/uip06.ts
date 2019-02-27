/**
 * @author fanliangqin@ultrain.io
 */
import { Contract } from "ultrain-ts-lib/src/contract";
import { Asset } from "ultrain-ts-lib/src/asset";
import { TransferParams, dispatchInline } from "ultrain-ts-lib/src/action";
import { PermissionLevel } from "ultrain-ts-lib/lib/permission-level";
import { env as action } from "ultrain-ts-lib/internal/action.d";
import { CurrencyStats, CurrencyAccount } from "ultrain-ts-lib/lib/balance";
import { NEX } from "ultrain-ts-lib/lib/name_ex";
import { NAME } from "ultrain-ts-lib/src/account";
import { UIP06 } from "ultrain-ts-lib/uips/uip06";
import { StringToSymbol } from "ultrain-ts-lib/src/asset";

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";

@database(CurrencyStats, STATSTABLE)
@database(CurrencyAccount, ACCOUNTTABLE)
export class uip06 extends Contract implements UIP06 {

  @action
  public create(issuer: account_name, maximum_supply: Asset): void {
    action.require_auth(this.receiver);
    let sym = maximum_supply.symbolName();
    ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
    ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, sym);
    let cs: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);

    let existing = statstable.get(sym, cs);
    ultrain_assert(!existing, "token with symbol already exists.");

    cs.supply.setSymbol(maximum_supply.getSymbol());
    cs.max_supply = maximum_supply;
    cs.issuer = issuer;
    statstable.emplace(this.receiver, cs);
  }

  @action
  public issue(to: account_name, quantity: Asset, memo: string): void {
    ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
    ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, quantity.symbolName());
    let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);
    let existing = statstable.get(quantity.symbolName(), st);

    ultrain_assert(existing, "token.issue: symbol name is not exist.");


    action.require_auth(st.issuer);
    ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
    ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
    ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");

    let amount = st.supply.getAmount() + quantity.getAmount();
    st.supply.setAmount(amount);
    statstable.modify(0, st);
    this.addBalance(st.issuer, quantity, st.issuer);
    if (to != st.issuer) {
      let pl: PermissionLevel = new PermissionLevel();
      pl.actor = st.issuer;
      pl.permission = NAME("active");
      let params = new TransferParams(0, 0, new Asset(), "");
      params.from = st.issuer;
      params.to = to;
      params.quantity = quantity;
      params.memo = memo;
      // params.quantity.prints("before dispatchInline");
      dispatchInline(pl, this.receiver, NEX("transfer"), params);
    }
  }

  @action
  public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
    // Log.s("Transfer: ").i(from, 16).s("     ").i(to, 16).s("     ").s(memo).flush();
    // quantity.prints("Transfer");
    ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
    action.require_auth(from);
    ultrain_assert(action.is_account(to), "token.transfer: to account does not exist.");

    // let symname: SymbolName = quantity.symbolName();
    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, quantity.symbolName());
    let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);
    let existing = statstable.get(quantity.symbolName(), st);

    ultrain_assert(existing, "token.transfer symbol name is not exist.");

    action.require_recipient(from);
    action.require_recipient(to);

    ultrain_assert(quantity.isValid(), "token.transfer: invalid quantity.");
    ultrain_assert(quantity.getSymbol() == st.supply.getSymbol(), "token.transfer: symbol precision mismatch.");
    ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

    this.subBalance(from, quantity);
    this.addBalance(to, quantity, from);
  }

  private subBalance(owner: account_name, value: Asset): void {
    let ats: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(ACCOUNTTABLE), this.receiver, owner);
    let from: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = ats.get(value.symbolName(), from);

    ultrain_assert(existing, "token.subBalance: from account is not exist.");
    ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

    if (from.balance.getAmount() == value.getAmount()) {
      ats.erase(from.primaryKey());
    } else {
      let amount = from.balance.getAmount() - value.getAmount();
      from.balance.setAmount(amount);
      ats.modify(owner, from);
    }
  }

  private addBalance(owner: account_name, value: Asset, ram_payer: u64): void {
    let toaccount: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(ACCOUNTTABLE), this.receiver, owner);
    let to: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = toaccount.get(value.symbolName(), to);

    if (!existing) {
      let a: CurrencyAccount = new CurrencyAccount(value);
      toaccount.emplace(ram_payer, a);
    } else {
      let amount = to.balance.getAmount() + value.getAmount();
      to.balance.setAmount(amount);
      toaccount.modify(0, to);
    }
  }

  @action
  public getSupply(sym_name: string): Asset {
    let symname = StringToSymbol(0, sym_name) >> 8;
    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, symname);
    let st = new CurrencyStats(new Asset(), new Asset(), 0);
    let existing = statstable.get(symname, st);
    ultrain_assert(existing, "getSupply failed, states is not existed.");
    return st.supply;
  }

  @action
  public getBalance(owner: account_name, sym_name: string): Asset {
    let symname = StringToSymbol(0, sym_name) >> 8;
    let accounts: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(ACCOUNTTABLE), owner, symname);
    let account = new CurrencyAccount(new Asset());
    let existing = accounts.get(symname, account);
    ultrain_assert(existing, "getBalance failed, account is not existed.");

    return account.balance;
  }
}
