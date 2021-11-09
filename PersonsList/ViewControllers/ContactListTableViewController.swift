//
//  ContactListTableViewController.swift
//  PersonsList
//
//  Created by Raul Shafigin on 09.11.2021.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    private var contactList = DataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.title = "Persons list"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCellID", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name) \(contact.lastName)"
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let person = contactList[indexPath.row]
            personInfoVC.person = person
        
    }
}
