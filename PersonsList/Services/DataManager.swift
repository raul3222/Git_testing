//
//  DataManager.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

//import Foundation

class DataManager {
    
   
    static var shared: [Person] = {
        let instance = DataManager()
        return instance.getPersonList()
    }()
    
    private init() {}
    
        
    private  var names = ["John", "Jim", "Tim", "Karl", "Ann",
                          "Peter", "Nik", "Lucy", "Mia", "Jane"]
    
    private  var lastNames = ["Murphy", "Jankin", "Williams", "Black", "Robertson",
                              "Butler", "Isaacson", "Smith", "Pennyworth", "Nolan"]
    
    private  var emails = ["qwe@mail.ru", "qqq@mail.ru", "www@mail.ru", "eee@mail.ru", "aaa@mail.ru",
                           "sss@mail.ru", "ddd@mail.ru", "zzz@mail.ru", "xxx@mail.ru", "ccc@mail.ru"]
    
    private  var phoneNumbers = ["123456789", "550220300", "660440100", "770999400", "440550660",
                                 "225665223", "666666666", "330220100", "550220330", "110220330"]
    
    private  func getPersonList() -> [Person] {
        var persons = [Person]()
        for _ in 0..<10 {
            persons.append(Person(name: getRandomName(),
                                  lastName: getRandomLastName(),
                                  email: getRandomEmail(),
                                  phoneNumber: getRandomPhoneNumbers()))
        }
        return persons
    }
    
    private  func getRandomName() -> String {
        let rand = Int.random(in: 0..<names.count)
        let name = names.remove(at: rand)
        return name
    }
    private  func getRandomLastName() -> String {
        let rand = Int.random(in: 0..<lastNames.count)
        let lastName = lastNames.remove(at: rand)
        return lastName
    }
    private  func getRandomEmail() -> String {
        let rand = Int.random(in: 0..<emails.count)
        let email = emails.remove(at: rand)
        return email
    }
    private func getRandomPhoneNumbers() -> String {
        let rand = Int.random(in: 0..<phoneNumbers.count)
        let phoneNumber = phoneNumbers.remove(at: rand)
        return phoneNumber
    }
}


