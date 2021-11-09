//
//  DataManager.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

//import Foundation

class DataManager {
    var names = ["John", "Jim", "Tim", "Karl", "Ann", "Peter", "Nik", "Lucy", "Mia", "Jane"]
    var lastNames = ["Murphy", "Jankin", "Williams", "Black", "Robertson", "Butler", "Isaacson", "Smith", "Pennyworth", "Nolan"]
    var emails = ["qwe@mail.ru", "qqq@mail.ru", "www@mail.ru", "eee@mail.ru", "aaa@mail.ru", "sss@mail.ru", "ddd@mail.ru", "zzz@mail.ru", "xxx@mail.ru", "ccc@mail.ru",]
    var phoneNumbers = ["123456789", "111111111", "222222222", "333333333", "440550660", "225665223", "666666666", "777777777", "550220330", "110220330",]
    
     func getRandomName() -> String {
        let rand = Int.random(in: 0..<names.count)
        let name = names.remove(at: rand)
        return name
    }
    func getRandomLastName() -> String {
       let rand = Int.random(in: 0..<lastNames.count)
       let lastName = lastNames.remove(at: rand)
       return lastName
   }
    func getRandomEmail() -> String {
       let rand = Int.random(in: 0..<emails.count)
       let email = emails.remove(at: rand)
       return email
   }
    func getRandomPhoneNumbers() -> String {
       let rand = Int.random(in: 0..<phoneNumbers.count)
       let phoneNumber = phoneNumbers.remove(at: rand)
       return phoneNumber
   }
}
