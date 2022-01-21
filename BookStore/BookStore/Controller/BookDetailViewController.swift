//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var enterTitleTextField: UITextField!
    @IBOutlet weak var enterAuthorTextField: UITextField!
    @IBOutlet weak var enterDescriptionTextField: UITextView!
    @IBOutlet weak var enterRatingTextField: UITextField!
    
    // MARK: - Properties
    
    var theOptionalBookPropertyOnMyDetailVC: Book?
    
    // MARK: -LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(book: theOptionalBookPropertyOnMyDetailVC)
    }
    
    // MARK: - Actions
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let title = enterTitleTextField.text,
              let author = enterAuthorTextField.text,
              let description = enterDescriptionTextField.text,
              let rating = enterRatingTextField.text,
              let doubleRating = Double(rating) else {return}
        if let theOptionalBookPropertyOnMyDetailVC = theOptionalBookPropertyOnMyDetailVC {
            BookController.sharedInstance.updateBook(bookToUpdate: theOptionalBookPropertyOnMyDetailVC, updatedAuthor: author, updatedTitle: title, updatedRating: doubleRating, updatedSynopsis: description)
        } else {
            BookController.sharedInstance.createBook(author: author, title: title, rating: doubleRating, synopsis: description)
        }
        navigationController?.popViewController(animated: true)
    }


@IBAction func clearButtonPressed(_ sender: Any) {
    resetView()
}

// MARK: - Helper Functions

func updateViews(book: Book?) {
    guard let book = book else {return}
    enterRatingTextField.text = String(book.rating)
    enterAuthorTextField.text = book.author
    enterDescriptionTextField.text = book.synopsis
    enterTitleTextField.text = book.title
    
}
func resetView() {
    enterTitleTextField.text = ""
    enterAuthorTextField.text = ""
    enterRatingTextField.text = ""
    enterDescriptionTextField.text = ""
    
}
}
