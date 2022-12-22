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
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "paperplane")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}


// MARK: - UITableViewDelegate

extension DetailPersonsListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
