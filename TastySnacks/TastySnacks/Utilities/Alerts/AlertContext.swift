//
//  AlertContext.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 10/02/2022.
//

import SwiftUI

struct AlertContext {
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text(AlertDescription.invalidData.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text(AlertDescription.invalidResponse.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidUrl = AlertItem(
        title: Text("Server Error"),
        message: Text(AlertDescription.invalidURL.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text(AlertDescription.unableToComplete.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text(AlertDescription.invalidForm.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text(AlertDescription.invalidEmail.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidUser = AlertItem(
        title: Text("Invalid Email"),
        message: Text(AlertDescription.invalidUser.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let userSaved = AlertItem(
        title: Text("Profile saved"),
        message: Text(AlertDescription.userSaved.rawValue),
        buttonType: .default(Text("OK"))
    )

}
