//
//  ContactListView.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: ContactInformationView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getInfoAboutPersons())
    }
}
