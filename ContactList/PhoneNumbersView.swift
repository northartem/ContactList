//
//  PhoneNumbersView.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import SwiftUI

struct PhoneNumbersView: View {
    
    let persons = Person.getInfoAboutPersons()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(person.fullName) {
                        Label(person.phone, systemImage: "phone")
                        Label(person.email, systemImage: "tray")
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListWithInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumbersView()
    }
}
