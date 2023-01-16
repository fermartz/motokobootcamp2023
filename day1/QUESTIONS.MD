# <a id="questions"> 🙋 Questions </a>
1. How much is the current memory capacity of a canister? 

**Answer 1: 8 gigabytes**

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
**Answer 2: The counter variable is immutable. In order to run the program we need to change it to from let to var.**

1. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
**Answer 3:**
* The varible message is declared as Text and assigned a value of Nat.
* The function change_message has to be an update function not a query function.
  

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.

**Answer 4: False**