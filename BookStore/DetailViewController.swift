//
//  DetailViewController.swift
//  BookStore
//
//  Created by user188731 on 3/5/21.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBAction func cancel(sender: AnyObject) {
        dismiss(animated: false, completion: nil)
    }
    
    // MARK: Properties
    
    func configureView() {
        // Update the user interface for the detail item
        
        if let myBook = detailItem {
            priceLabel.text = myBook.price
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    

    var detailItem: Book? {
        didSet {
            // Update the view
        }
    }
}
