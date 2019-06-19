import { Contract } from "ultrain-ts-lib/src/contract";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";

class Votes implements Serializable {
  @primaryid
  name: account_name = 0;
  count: u32 = 0;
}

class Voters implements Serializable {
  @primaryid
  name: account_name = 0;
}

class Candidate implements Serializable {
  @primaryid
  name: account_name = 0;
}

const votestable = "votes";
const votesscope = "s.votes";

const canditable = "candidate";
const candiscope = "s.candidate";

const voterstable = "voters";
const votersscope = "s.voters";

@database(Votes, votestable)
@database(Voters, voterstable)
@database(Candidate, canditable)
class VoteContract extends Contract {

  candidateDB: DBManager<Candidate>;
  votesDB: DBManager<Votes>;
  votersDB: DBManager<Voters>;

  constructor(code: u64) {
    super(code);
    this.candidateDB = new DBManager<Candidate>(NAME(canditable), NAME(candiscope));
    this.votesDB = new DBManager<Votes>(NAME(votestable), NAME(votesscope));
    this.votersDB = new DBManager<Voters>(NAME(voterstable), NAME(votersscope));
  }

  @action
  addCandidate(candidate: account_name): void {
    ultrain_assert(Action.sender == this.receiver, "only contract owner can add candidates.");

    let c = new Candidate();
    c.name = candidate;
    let existing = this.candidateDB.exists(candidate);
    if (!existing) {
      this.candidateDB.emplace(c);
    } else {
      ultrain_assert(false, "you also add this account as candidate.");
    }
  }

  @action
  vote(candidate: account_name): void {
    ultrain_assert(this.votersDB.exists(Action.sender) == false, "you have voted.");
    ultrain_assert(this.candidateDB.exists(candidate) == true, "you should vote a valid candidate.");

    let votes = new Votes();
    votes.name = candidate;
    let existing = this.votesDB.get(candidate, votes);
    if (existing) {
      votes.count += 1;
      this.votesDB.modify(votes);
    } else {
      votes.count = 1;
      this.votesDB.emplace(votes);
    }

    let voters = new Voters();
    voters.name = Action.sender;
    this.votersDB.emplace(voters);
  }
}
