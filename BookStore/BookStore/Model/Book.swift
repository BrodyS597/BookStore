//
//  Book.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import Foundation

class Book {
    
    
    
    // MARK: - Properties
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
    
    // MARK: -Initializers
    init(author: String, title: String, lastUpdated: Date = Date(), rating: Double, synopsis: String) {
        self.author = author
        self.title = title
        self.lastUpdated = lastUpdated
        self.rating = rating
        self.synopsis = synopsis
    }
    
    
    
}// end of class
// MARK: -Extensions

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs.title == rhs.title &&
        lhs.author == rhs.author &&
        lhs.synopsis == rhs.synopsis &&
        lhs.rating == rhs.rating
    }
}

