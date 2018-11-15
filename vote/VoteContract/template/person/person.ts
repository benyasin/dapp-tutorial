import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { ultrain_assert } from "ultrain-ts-lib/src/utils";
import { DBManager } from "ultrain-ts-lib/src/dbmanager";
import { NAME } from "ultrain-ts-lib/src/account";

class Person implements Serializable {
  // name: string;
  name: string;
  age: u32;
  salary: u32;

  primaryKey(): u64 { return NAME(this.name); }

  prints(): void {
    Log.s("name = ").s(this.name).s(", age = ").i(this.age).s(", salary = ").i(this.salary).flush();
  }
}

const tblname = "humans";
const scope = "dept.sales";

@database(Person, "humans")
// @database(SomeMoreRecordStruct, "other_table")
class PersonContract extends Contract {

  db: DBManager<Person>;
  /**
   * onInit is called automatically before executing an aciton.
   */
  onInit(): void {
    this.db = new DBManager<Person>(NAME(tblname), this.receiver, NAME(scope));
  }
  /**
   * onStop is called automatically after executing an action.
   */
  onStop(): void {

  }

  constructor(code: u64) {
    super(code);
  }

  @action
  add(name: string, age: u32, salary: u32): void {
    let p = new Person();
    p.name = name;
    p.age = age;
    p.salary = salary;

    let existing = this.db.exists(NAME(name));
    ultrain_assert(!existing, "this person has existed in db yet.");
    p.prints();
    this.db.emplace(this.receiver, p);
  }

  @action
  modify(name: string, salary: u32): void {
    let p = new Person();
    let existing = this.db.get(NAME(name), p);
    ultrain_assert(existing, "the person does not exist.");

    p.salary = salary;

    this.db.modify(this.receiver, p);
  }

  @action
  remove(name: string): void {
    Log.s("start to remove: ").s(name).flush();
    this.db.erase(NAME(name));
  }
}
