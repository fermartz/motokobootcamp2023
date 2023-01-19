import Buffer "mo:base/Buffer";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Text "mo:base/Text";


actor {
    
    // *************************
    // *** CODING CHALLENGES ***
    // ******* DAY TWO *********

    
    public func average_array(a : [Int]) : async Int {
        var r : Int = 0; 
        for( i in a.vals()){
            r += i;
        };

        r/a.size();
    };

    public func count_character(s : Text, c : Text) : async Nat {
        var counter = 0;
       
        for(item in Text.toIter(s)){
            if(Char.toText(item) == c){
               counter += 1;
            };
        };
        counter;
    };

    public func factorial(n : Nat) : async Nat {

        func getFact(m : Nat) : Nat {
            if(m == 0){
                return 1;
            } else {
                return m * getFact(m - 1);
            };
        };
        getFact(n);
    };

    public func number_of_words(t : Text) : async Nat {

        var s = Text.split(t, #char(' '));
        var a = Iter.toArray(s);
        var arrBuffer = Buffer.Buffer<Text>(0);

        for (i in a.vals()){  
            
             if(i != ""){
                arrBuffer.add(i);
             };
          
        };
        arrBuffer.size();
    };

    public func find_duplicates(n : [Nat]) : async [Nat] {
        
        let buff = Buffer.Buffer<Nat>(0);

        for(i in n.vals()){
            var counter = 0;
            for(j in n.vals()){
                if(i == j){
                    counter += 1;                                   
                };
            };
            if(counter >= 2){
                buff.add(i);
            };
        };

        Buffer.removeDuplicates<Nat>(buff, Nat.compare);
        buff.toArray();
        
    };

    public func convert_to_binary(n : Nat) : async Text {

        // let r = Char.toNat32(Nat.toChar(n));
        Nat.toText(n);
    };
}