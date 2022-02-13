//
//  AccountView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct AccountView: View {

    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal information")) {
                    TextField("First name", text: $viewModel.firstName)
                    TextField("Last name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)

                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                }

                Section(header: Text("Request")) {
                    Toggle("Refill", isOn: $viewModel.refill)
                    Toggle("Main menu", isOn: $viewModel.mainMenu)
                    Toggle("Dessert menu", isOn: $viewModel.dessert)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.buttonType)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
