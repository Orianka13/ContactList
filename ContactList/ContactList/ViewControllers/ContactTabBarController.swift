//
//  ContactTabBarController.swift
//  ContactList
//
//  Created by Олеся Егорова on 21.12.2022.
//

import UIKit

final class ContactTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        let persons = Person.getPersons()
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personsListVC = navigationVC.topViewController as? PersonsListViewController {
                    personsListVC.persons = persons
                } else if let detailPersonsListVC = navigationVC.topViewController as? DetailPersonsListViewController {
                    detailPersonsListVC.persons = persons
                }
            }
        }
    }
}
