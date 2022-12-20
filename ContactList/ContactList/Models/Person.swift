//
//  Person.swift
//  ContactList
//
//  Created by Олеся Егорова on 20.12.2022.
//

struct Person: Hashable {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let dataStore = DataStore()
        var persons: Set<Person> = []
        
        for _ in 1...20 {
            let person =   Person(firstName: dataStore.firstNames.randomElement() ?? "",
                                  secondName: dataStore.secondNames.randomElement() ?? "",
                                  email: dataStore.emails.randomElement() ?? "",
                                  phoneNumber: dataStore.phoneNumbers.randomElement() ?? "")
            persons.insert(person)
        }
        
        return Array(persons)
    }
}
