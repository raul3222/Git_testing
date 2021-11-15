//
//  DetailedContactListTableViewController.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

import UIKit

class DetailedContactListTableViewController: UITableViewController {
    
    var persons: [Person]!
   //private var contactList: [Person] = DataManager.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCellId", for: indexPath)
        let contact = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(named: "phone_logo")
        } else {
            content.text = contact.email
            content.image = UIImage(named: "mail_logo1")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = persons[section]
        return "\(contact.name) \(contact.lastName)"
    }
}
