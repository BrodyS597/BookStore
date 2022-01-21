//
//  BookController.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import Foundation

class BookController {
    
    // MARK: -SOURCE OF TRUTH
    var arrayOfBooks: [Book] = []
    
    // MARK: - Singleton
    static let sharedInstance = BookController ()
    
    // MARK: -CRUD Funcs
    //create
    func createBook (author: String, title: String, rating: Double, synopsis: String){
        let newBook = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        arrayOfBooks.append(newBook)
    }
    //update
    func updateBook (bookToUpdate: Book, updatedAuthor: String, updatedTitle: String, updatedRating: Double, updatedSynopsis: String) {
        bookToUpdate.title = updatedTitle
        bookToUpdate.author = updatedAuthor
        bookToUpdate.rating = updatedRating
        bookToUpdate.synopsis = updatedSynopsis
    }
    
    //delete
    func deleteBook(bookToDelete: Book) {
        guard let indexOfBooks = arrayOfBooks.firstIndex(where: {$0 == bookToDelete}) else {return}
        arrayOfBooks.remove(at: indexOfBooks)
    }
}
