//
//  PersonsListViewController.swift
//  TableViewRandomList
//
//  Created by Vlad Zinevich on 16.06.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    let persons = Person.createPersons()
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonItem", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surName
        
        
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "Detail" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = persons[indexPath.row]
        }
    }
    

}
