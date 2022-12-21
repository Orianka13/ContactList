//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Олеся Егорова on 20.12.2022.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUi()
    }
    
    private func setupUi() {
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
