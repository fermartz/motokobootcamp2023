
import Buffer "mo:base/Buffer";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Principal "mo:base/Principal";

actor {

    public func unique(l : List.List<Text>) : async List.List<Text> {
        var u : List.List<Text> = List.nil<Text>();

        for (i in List.toIter<Text>(l)) {
            if (not List.some<Text>(u, func x = x == i)) {
                u := List.push<Text>(i, u);
            };
        };
        return u;
    };


    public func reverse(l : List.List<Text>) : async List.List<Text> {
        List.reverse<Text>(l);
    };

    public query ({caller}) func is_anonymous() : async Bool {
        Principal.isAnonymous(caller);
    };

    public func find_in_buffer(b : Buffer.Buffer<Text>, v : Text) : async ?Nat {
        
        Buffer.indexOf<Text>(v, b, func a { a == v });
    };

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    public query func get_usernames() : async [(Principal, Text)] {
        var localBuffer = Buffer.Buffer<(Principal, Text)>(0);

        for(i in usernames.entries()){
            localBuffer.add(i);
        };

        localBuffer.toArray();
        
    };


}