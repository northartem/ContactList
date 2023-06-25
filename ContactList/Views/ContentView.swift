//
//  ContentView.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getInfoAboutPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            PhoneNumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
