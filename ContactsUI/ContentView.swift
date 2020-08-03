//
//  ContentView.swift
//  ContactsUI
//
//  Created by Виталий Сосин on 03.08.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getListPerson()
    
    var body: some View {
        TabView {
            
            Contacts(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
            }
            
            ListContacts(persons: persons)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("New List")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
