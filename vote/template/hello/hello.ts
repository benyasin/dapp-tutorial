
import "allocator/arena";

import { Log } from "ultrain-ts-lib/src/log";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Return } from "ultrain-ts-lib/src/return";
import { ACCOUNT, Account, NAME, RNAME } from "ultrain-ts-lib/src/account";

class HelloContract extends Contract {
    @action
    sayHi(name: account_name): void {
        Log.s("on_hi: name = ").s(RNAME(name)).flush();
        Return("call sayHi() succeed.");
    }

}