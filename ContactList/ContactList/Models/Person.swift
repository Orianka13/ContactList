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
        
        var persons: [Person] = []
        
        let firstNamesShuffled = DataStore.shared.firstNames.shuffled()
        let secondNamesShuffled = DataStore.shared.secondNames.shuffled()
        let phoneNumbersShuffled = DataStore.shared.phoneNumbers.shuffled()
        let emailsShuffled = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(firstNamesShuffled.count,
                                 secondNamesShuffled.count,
                                 phoneNumbersShuffled.count,
                                 emailsShuffled.count)
        
        for index in 0..<iterationCount {
            let person = Person(firstName: firstNamesShuffled[index],
                                secondName: secondNamesShuffled[index],
                                email: emailsShuffled[index],
                                phoneNumber: phoneNumbersShuffled[index])
            persons.append(person)
        }
        return persons
    }
}
