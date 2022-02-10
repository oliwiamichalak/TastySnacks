//
//  TastySnackListView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct TastySnackListView: View {

    @StateObject var viewModel = TastySnacksListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.snacks) { snack in
                SnackListCell(name: snack.name, price: snack.price, imageUrl: snack.imageURL)
            }
            .navigationTitle("TastySnacks")
        }
        .onAppear {
            viewModel.getSnacks()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.buttonType)
        }
    }
}

struct TastySnackListView_Previews: PreviewProvider {
    static var previews: some View {
        TastySnackListView()
    }
}
