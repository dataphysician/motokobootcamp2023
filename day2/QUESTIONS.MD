# DAY 2

### Question 1: Who controls the ledger canister?
**Answer:** NNS


### Question 2: What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
**Answer:** pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
https://dashboard.internetcomputer.org/canister/mwrha-maaaa-aaaab-qabqq-cai


### Question 3: I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
**Answer:** 
(ICP Staked + Maturity staked) x Dissolve Delay Bonus x Age Bonus
Amount of ICP and maturity staked   = 10
Length of dissolve delay            = 4
"Age" of the neuron (time spent in a non-dissolving state)  = 2

*Dissolve delay (Years - Linear Multiplier)*
0 - 0
0.5 - 0.125
8 - 2

*Age (Years - Linear Multiplier)*
0 - 0
2 - 0.625
4 - 1.25


(10+0) x (0.125) x (0.625)  = **0.78125 Voting Power**


### Question 4: What is wrong with the following code?
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}

**Answer:**


### Question 5: What is wrong with the following code?
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}

**Answer:  The Nat module is not imported - import Nat "mo:base/Nat";**


### What is wrong with the following code?
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}

**Answer:**