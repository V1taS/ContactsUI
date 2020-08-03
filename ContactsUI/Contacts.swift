//
//  Contacts.swift
//  ContactsUI
//
//  Created by Виталий Сосин on 03.08.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct Contacts: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.email) { person in
                NavigationLink(destination: DescriptionContact(detailPerson: person)) {
                    Text("\(person.fullName)")
                }
            }
                .navigationBarTitle("List Contacts")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getListPerson())
    }
}
