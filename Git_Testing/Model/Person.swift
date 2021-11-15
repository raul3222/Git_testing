//
//  Person.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

struct Person {
    let name: String
    let lastName: String
    let email: String
    let phoneNumber: String
}

extension Person {
    static func getPersonsList() -> [Person]{
        var persons: [Person] = []
        let names = DataManager.shared.names.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        let minimumCount = min(
            names.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )

        for index in 0..<minimumCount {
            persons.append(Person(name: names[index], lastName: lastNames[index], email: emails[index], phoneNumber: phoneNumbers[index]))
        }
        return persons
    }
}



