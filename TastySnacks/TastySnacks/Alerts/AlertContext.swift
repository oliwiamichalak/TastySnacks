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
        message: Text(ErrorDescription.invalidData.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text(ErrorDescription.invalidResponse.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidUrl = AlertItem(
        title: Text("Server Error"),
        message: Text(ErrorDescription.invalidURL.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text(ErrorDescription.unableToComplete.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text(ErrorDescription.invalidForm.rawValue),
        buttonType: .default(Text("OK"))
    )

    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text(ErrorDescription.invalidEmail.rawValue),
        buttonType: .default(Text("OK"))
    )
}
