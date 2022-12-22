//
//  DataStore.swift
//  ContactList
//
//  Created by Олеся Егорова on 20.12.2022.
//


class DataStore {
    
    static let shared = DataStore()
    
    let firstNames = ["Bob", "Mary", "Kristina", "Allan", "Dave", "Mickle", "Georg", "Tom", "Anna", "Jesica"]
    
    let secondNames = ["Dillan", "Smith", "Grande", "Kruz", "Alba", "Ricci", "Christie", "Myers", "Ordonez", "Burcea"]
    
    let emails = ["qqqq@gmail.com", "fff@gmail.com", "tttt@gmail.com", "eeee@gmail.com", "www@gmail.com", "rrr@gmail.com", "yyyy@gmail.com", "uuuuu@gmail.com", "iiii@gmail.com", "oooo@gmail.com"]
    
    let phoneNumbers = ["112334556", "223445667", "123445667", "667889456", "151123312", "998789234", "234222345", "776556445", "778998234", "877655890"]
    
    private init() {}
}
