import List "mo:base/List";

import BookTypes "./book"

actor {
    // *************************
    // ******** GLOBAL *********
    // *************************

    type Book = BookTypes.Book;
    
    stable var BookList : List.List<Book> = List.nil<Book>();

    public func add_book(t : Text, p : Nat)  {
        let nBook : Book = {
            title = t;
            pages = p;
        };
        BookList := List.push(nBook, BookList);
    };


    

    public query func book_list() : async [Book] {

       List.toArray(BookList);
    };
}