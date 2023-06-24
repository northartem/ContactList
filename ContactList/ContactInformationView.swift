//
//  ContactInformationView.swift
//  ContactList
//
//  Created by Артём Латушкин on 23.06.2023.
//

import SwiftUI

struct ContactInformationView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack() {
                Image(person.profileImages)
                    .resizable()
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactPersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(person: Person.getInfoAboutPersons().first!)
    }
}
