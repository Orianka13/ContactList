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
        
        for _ in 0...dataStore.firstNames.endIndex - 1 {
         
            let firstName = dataStore.firstNames.remove(at: Int.random(in: dataStore.firstNames.startIndex...dataStore.firstNames.endIndex - 1))
            let secondName = dataStore.secondNames.remove(at: Int.random(in: dataStore.secondNames.startIndex...dataStore.secondNames.endIndex - 1))
            let phoneNumber = dataStore.phoneNumbers.remove(at: Int.random(in: dataStore.phoneNumbers.startIndex...dataStore.phoneNumbers.endIndex - 1))
            let email = dataStore.emails.remove(at: Int.random(in: dataStore.emails.startIndex...dataStore.emails.endIndex - 1))
            
            let person = Person(firstName: firstName,
                                secondName: secondName,
                                email: email,
                                phoneNumber: phoneNumber)
            persons.append(person)
        }
        
        return persons
    }
}
