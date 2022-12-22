//
//  Person.swift
//  ContactList
//
//  Created by Олеся Егорова on 20.12.2022.
//

struct Person {
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
        var persons: [Person] = []
        
        let firstNamesShuffled = dataStore.firstNames.shuffled()
        let secondNamesShuffled = dataStore.secondNames.shuffled()
        let phoneNumbersShuffled = dataStore.phoneNumbers.shuffled()
        let emailsShuffled = dataStore.emails.shuffled()
        
        for index in 0..<dataStore.firstNames.endIndex {
            let person = Person(firstName: firstNamesShuffled[index],
                   secondName: secondNamesShuffled[index],
                   email: emailsShuffled[index],
                   phoneNumber: phoneNumbersShuffled[index])
            persons.append(person)
        }
        return persons
    }
}
