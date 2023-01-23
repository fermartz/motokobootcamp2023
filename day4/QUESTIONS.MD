# Questions 🙋

1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
  **Answer 1: No. It has 4gb**
2. How much accounts can a unique Principal own?
   **Answer 1: Unlimited**
   A: "There are a lot of Accounts which could be generated for a Principal, because a 32-bit unsigned integer has a maximum value of 4,294,967,295."
3. Can we safely upgrade a canister from interface A to interface B?

Interface A
```motoko
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```
**Answer 3: Yes**

