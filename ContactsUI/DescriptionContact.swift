//
//  DescriptionContact.swift
//  ContactsUI
//
//  Created by Виталий Сосин on 03.08.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct DescriptionContact: View {
    
    let detailPerson: Person
    
    var body: some View {
        Form {
            Text("E-mail: \(detailPerson.email)")
            Text("Phone number: \(detailPerson.phone)")
                
                .navigationBarTitle("\(detailPerson.fullName)", displayMode: .automatic) // Когда ставлю (displayMode: .inline) происходит БАГ в отображении
        }
    }
}

struct DescriptionContact_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionContact(detailPerson: Person(firstName: "Ivan", lastName: "Ivanov", email: "375693@mail.ru", phone: "+7-999-804-9000"))
    }
}
