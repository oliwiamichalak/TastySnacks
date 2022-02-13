//
//  User.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var refill = false
    var dessert = false
    var mainMenu = false
}
