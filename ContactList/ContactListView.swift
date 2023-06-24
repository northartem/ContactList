//
//  ContactListView.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    
    private let persons = Person.getInfoAboutPersons()
    
    var body: some View {
        NavigationView{
            List(persons) { person in
                NavigationLink(destination: ContactInformationView(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
