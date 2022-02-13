//
//  AccountViewModel.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var refill = false
    @Published var dessert = false
    @Published var mainMenu = false
    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty, !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        if isValidForm {
            print("Changes saved")
        }
    }
}
