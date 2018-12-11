//
//  ListController.swift
//  remember
//
//  Created by apple on 10/12/2018.
//  Copyright © 2018 Samuel Alemayehu. All rights reserved.
//

import UIKit

class ListController: UITableViewController {
    
    var items:[String] = ["Bread", "Butter"]
   
    @IBAction func showDialog(_ sender: UIBarButtonItem) {
        print("showDialog")
        let alert = UIAlertController(title: "New Item", message: "Type item below", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            if let textFields = alert.textFields {
                if let item = textFields[0].text {
                    print(item)
                    self.items.append(item)
                    print(self.items)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
            
        }))
        alert.addAction(UIAlertAction(title: "delete", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row\(indexPath.row) selected")
        if let cell:UITableViewCell = self.tableView?.cellForRow(at: indexPath) {
            print("cell detected: \(cell)")
            if cell.accessoryType == UITableViewCell.AccessoryType.checkmark {
                cell.accessoryType = .none
            } else{
                cell.accessoryType = .checkmark
            }
        }
        
        
        
        
        tableView.deselectRow(at: indexPath, animated: true) }
        

    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.items.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingitem", for: indexPath)
        if let label = cell.textLabel {
            label.text = self.items[indexPath.row]
        }
        return cell
    }
    
    

}
