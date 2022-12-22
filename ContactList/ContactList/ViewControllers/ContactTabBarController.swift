//
//  ContactTabBarController.swift
//  ContactList
//
//  Created by Олеся Егорова on 21.12.2022.
//

import UIKit

final class ContactTabBarController: UITabBarController {
    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPersons()
    }
    
    private func setPersons() {
        guard let vc = viewControllers else { return }
        for viewController in vc {
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
