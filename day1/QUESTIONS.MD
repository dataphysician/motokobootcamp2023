# **DAY1**



### **Question 1: How much is the current memory capacity of a canister?**

### **Answer:** 48Gib


### **Question 2: What is the issue with the following code sample?**
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

### **Answer:** *let* declares a mutable variable called counter, but the reassignment operator (:=) assigns a counter variable that mutates


### **Question 3: What is the issue with the following code sample?**
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

### **Answer:** The *var* declaration of the variable message is assign a Text Type, but the 0 value assigned is understood as a Nat because of the lack of ""


### **Question 4: False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.**

### **Answer:** False