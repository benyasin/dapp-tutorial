import { Contract } from "ultrain-ts-lib/src/contract";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";
import { Log } from "ultrain-ts-lib/src/log";
import { SHA1 } from "ultrain-ts-lib/src/crypto";

class Rocker implements Serializable {
  @primaryid
  name: account_name = 0;
  number: string = "";
}

const rockerstable = "rocker";
const rockerscope = "s.rocker";

@database(Rocker, rockerstable)
class Rock extends Contract {

  rockerDB: DBManager<Rocker>;

  constructor(code: u64) {
    super(code);
    this.rockerDB = new DBManager<Rocker>(NAME(rockerstable), this.receiver, NAME(rockerscope));
  }

  @action
  addPerson(person: account_name): void {
    let r = new Rocker();
    r.name = person;
    let existing = this.rockerDB.exists(person);
    if (!existing) {
      this.rockerDB.emplace(this.receiver, r);

    } else {
      ultrain_assert(false, "you are all ready in the rocker list.");
    }
  }

  @action
  rock(amount: u8): void {
    ultrain_assert(Action.sender == this.receiver, "only contract owner can rock number");

    let cursor: Cursor<Rocker>;
    cursor = this.rockerDB.cursor();
    Log.s("cursor.count =").i(cursor.count).flush();
    let sha1 = new SHA1();

    while (cursor.hasNext()) {
      let r = cursor.get();

      //choose the one who has not been rocked
      if (r.number === "" && amount > 0) {
        let hash = sha1.hash(RNAME(r.name));
        r.number = hash.substr(0, 5);
        amount--;
        this.rockerDB.modify(this.receiver, r);
      }

      cursor.next();
    }

  }

}
