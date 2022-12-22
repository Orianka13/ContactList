//
//  DetailPersonsListViewController.swift
//  ContactList
//
//  Created by Олеся Егорова on 20.12.2022.
//

import UIKit

final class DetailPersonsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumber", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "paperplane")
            cell.contentConfiguration = content
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
