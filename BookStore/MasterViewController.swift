//
//  ViewController.swift
//  BookStore
//
//  Created by user188731 on 3/5/21.
//

import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var detailsViewController: DetailViewController? = nil
    var objects = [Any]()
    var myBookStore = BookStore()
    
    // MARK: Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBookStore.sortedBookList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = myBookStore.sortedBookList[indexPath.row].title
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    // MARK: Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedBook : Book = myBookStore.sortedBookList[indexPath.row]
                let controller = (segue.destination as! DetailViewController)
                controller.detailItem = selectedBook
            }
        }
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

