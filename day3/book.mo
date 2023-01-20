import Nat "mo:base/Nat";
import Text "mo:base/Text";


module {

    public type Title = Text;
    public type Pages = Nat;

    public type Book = {
        title : Title;
        pages: Pages;
    };

    
    public func create_book(t : Text, p : Nat) : async Book  {
        {
            title = t;
            pages = p;
        };
       
    };

}