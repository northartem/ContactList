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
    var profileImages: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getInfoAboutPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let image = DataStore.shared.profileImages.shuffled()
        
        let interactionCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count,
            image.count
        )
        
        for index in 0..<interactionCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                profileImages: image[index]
            )
            
            persons.append(person)
            
        }
        return persons
    }
}
