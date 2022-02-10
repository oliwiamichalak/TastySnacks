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
}
