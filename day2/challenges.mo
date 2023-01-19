import Array "mo:base/Array";
import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
actor {


// Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
            for (i in array.vals()) {
                sum := sum + i;
            };

        return sum / array.size();
    };

// Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.

    public func count_character(t : Text, c : Char) : async Nat {
        var count : Nat = 0;
        for (i in t) {
            if (i == c) {
                count := count + 1;
            };
        };
        return count;
    };

}
