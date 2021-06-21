//
//  Persons.swift
//  TableViewRandomList
//
//  Created by Vlad Zinevich on 21.06.2021.
//

import Foundation

struct Person {
    
    var name: String
    var surName: String
    var email: String
    var phoneNumber: String
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surNames = DataManager.shared.surNames.shuffled()
        let emails = DataManager.shared.surNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surName: surNames[index],
                                email: emails[index],
                                phoneNumber: phones[index])
            persons.append(person)
        }
        
        return persons
    }

}
