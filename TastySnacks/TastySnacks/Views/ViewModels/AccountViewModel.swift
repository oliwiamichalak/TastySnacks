//
//  AccountViewModel.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    // just for learning purposes
    @AppStorage("user") private var userData: Data?

    @Published var user = User()
    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty, !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        if isValidForm {
            do {
                let data = try JSONEncoder().encode(user)
                userData = data
                alertItem = AlertContext.userSaved
            } catch {
                alertItem = AlertContext.invalidUser
            }
        }
    }

    func retriveUser() {
        guard let userData = userData else { return }

        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUser
        }
    }
}
