//
//  LibraryCellTableViewCell.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class LibraryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var bookRatingLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    func updateViews(book: Book) {
        bookAuthorLabel.text = book.author
        bookTitleLabel.text = book.title
        bookRatingLabel.text = String(book.rating)
    }
}
