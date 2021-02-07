//
//  User.swift
//  Clubhouse
//
//  Created by Raphael Cerqueira on 04/02/21.
//

import Foundation

struct User: Identifiable {
    let id = UUID().uuidString
    var name: String
    var image: String
    var isMuted: Bool = false
}

let users = [
    User(name: "Jennifer", image: "jennifer"),
    User(name: "Courteney", image: "courteney"),
    User(name: "Matthew", image: "matthew", isMuted: true),
    User(name: "Lisa", image: "lisa"),
    User(name: "David", image: "david", isMuted: true),
    User(name: "Matt", image: "matt")
]

let audience = [
    User(name: "James", image: "james"),
    User(name: "Maggie", image: "maggie"),
    User(name: "Paul", image: "paul"),
    User(name: "Reese", image: "reese"),
    User(name: "Jennifer", image: "jennifer"),
    User(name: "Courteney", image: "courteney"),
    User(name: "Matthew", image: "matthew"),
    User(name: "Lisa", image: "lisa"),
    User(name: "David", image: "david"),
    User(name: "Matt", image: "matt")
]
