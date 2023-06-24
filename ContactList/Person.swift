//
//  Person.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    let profileImages: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getInfoAboutPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let profileImages = DataStore.shared.profileImages.shuffled()
        
        let interactionCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count,
            profileImages.count
        )
        
        for index in 0..<interactionCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                profileImages: profileImages[index]
            )
            
            persons.append(person)
            
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
