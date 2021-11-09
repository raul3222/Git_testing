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
    static func getPersonList() -> [Person] {
        let dataManager = DataManager()
        var person = [Person]()
        for _ in 0..<10 {
            person.append(Person(name: dataManager.getRandomName(),
                                 lastName: dataManager.getRandomLastName(),
                                 email: dataManager.getRandomEmail(),
                                 phoneNumber: dataManager.getRandomPhoneNumbers()))
        }
       return person
    }
}
