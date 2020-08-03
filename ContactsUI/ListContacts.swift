//
//  ListContacts.swift
//  ContactsUI
//
//  Created by Виталий Сосин on 03.08.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct ListContacts: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(persons, id: \.email) { person in
                    Section(header: Text("\(person.fullName)")) {
                        
                        HStack {
                            Image(systemName: "tray.and.arrow.down")
                                .foregroundColor(.blue)
                            Text("E-mail: \(person.email)")
                        }
                        
                        HStack {
                            Image(systemName: "phone.circle")
                                .foregroundColor(.blue)
                            Text("Phone: \(person.phone)")
                        }
                    }
                }
            }
                .navigationBarTitle("New List")
        }
    }
}

struct ListContacts_Previews: PreviewProvider {
    static var previews: some View {
        ListContacts(persons: Person.getListPerson())
    }
}
