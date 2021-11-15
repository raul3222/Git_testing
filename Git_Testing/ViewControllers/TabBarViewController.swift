//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Raul Shafigin on 11.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    // Some changes commited to temp branch
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else {return}
        guard let detailedVC = viewControllers?.last as? DetailedContactListTableViewController else {return}
        
        let persons = Person.getPersonsList()
        contactListVC.persons = persons
        detailedVC.persons = persons
    }

}
