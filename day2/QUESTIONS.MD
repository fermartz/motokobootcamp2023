# Questions 🙋

1. Who controls the ledger canister? 
   
  **Answer 1: Anyone can interact with it but no one can control it**

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  

**Answer 2: Motoko playground with 1300 nodes**

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

**Answer 3:  4 years = 1.25x**

4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
**Answer 4:  At the top need to: import Nat "mo:base/Nat"**

5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```

**Answer 5:  Need to remove the var from [var Text]**

6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```

**Answer 6:  Need to import Array from base as well as Buffer. For performance issues is better to create a Buffer, add all the values of the array in a loop then add the new_language and convert Buffer.toArray in the return**