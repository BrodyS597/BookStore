//
//  LibraryTableViewController.swift
//  BookStore
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class LibraryTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.sharedInstance.arrayOfBooks.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as? LibraryCellTableViewCell else {return UITableViewCell() }
        let bookToUpdateCell = BookController.sharedInstance.arrayOfBooks[indexPath.row]
        cell.updateViews(book: bookToUpdateCell)
        
        // Configure the cell...
        
        return cell
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let deletedBook = BookController.sharedInstance.arrayOfBooks[indexPath.row]
            BookController.sharedInstance.deleteBook(bookToDelete: deletedBook)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
        }
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //IIDOO
        //Identify; check to see if the identifier is the same as a segue we would want to send data with, if so, we will run the code in the scope, if not, pass over/ignore it.
        if segue.identifier == "toDetailVC" {
            
            //Destination; verifying if the segues destination leads to the viewController we want (BookDetailViewController) and allows access to it's properties on that viewController.
            if let destination = segue.destination as? BookDetailViewController,
                
                //nice, identifies the cell that was "selected"
                let indexPath = tableView.indexPathForSelectedRow {
                
                //Object to send; using the index we discovered to retrieve the BOOK we want to pass along, that matches the one in our arrayOfBooks
                let bookToPass = BookController.sharedInstance.arrayOfBooks[indexPath.row]
                
                //Object to receive; sets the value of the BOOK? on the destination to the book we just retreived
                destination.theOptionalBookPropertyOnMyDetailVC = bookToPass
            }
        }
    }
}

