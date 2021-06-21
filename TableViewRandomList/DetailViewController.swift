//
//  DetailViewController.swift
//  TableViewRandomList
//
//  Created by Vlad Zinevich on 21.06.2021.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name + " " + person.surName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
