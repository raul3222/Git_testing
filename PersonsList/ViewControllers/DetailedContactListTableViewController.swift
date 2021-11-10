//
//  DetailedContactListTableViewController.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

import UIKit

class DetailedContactListTableViewController: UITableViewController {
    
    private var contactList: [Person] = DataManager.shared
    private var indexForContactList = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
   // Нашел ошибку в методе ниже после отправки задания на проверку.
   //Пока что не смог решить проблему.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCellId", for: indexPath)
        
        let contact = contactList[indexForContactList]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            
            content.text = contact.phoneNumber
            content.image = UIImage(named: "phone_logo")
        } else {
            content.text = contact.email
            content.image = UIImage(named: "mail_logo1")

            indexForContactList += 1
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactList[section]
        return "\(contact.name) \(contact.lastName)"
        
    }
  
}
