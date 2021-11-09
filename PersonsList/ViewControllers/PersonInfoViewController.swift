//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let person = person {
            navigationItem.title = "\(person.name) \(person.lastName)"
            phoneNumberLabel.text = person.phoneNumber
            emailLabel.text = person.email
        }
      
    }

}
