//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var enterTitleTextField: UITextField!
    @IBOutlet weak var enterAuthorTextField: UITextField!
    @IBOutlet weak var enterDescriptionTextField: UITextView!
    @IBOutlet weak var enterRatingTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Actions
    @IBAction func saveButtonPressed(_ sender: Any) {
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
