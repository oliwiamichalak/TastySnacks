//
//  ErrorDescription.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 10/02/2022.
//

import Foundation

enum ErrorDescription: String {
    case invalidURL = "There was an issue connecting to the server. Please, try again later or contact support"
    case invalidResponse = "Invalid response from server. Please, try again later or contact support"
    case invalidData = "The data recived from server is invalid. Please, try again later or contact support"
    case unableToComplete = "Unable to complete your request at this time, please check your internet connection."
    case invalidEmail = "Invalid email address, please ensure that email address is correct."
    case invalidForm = "Form invalid. Please, fill the form."
}
