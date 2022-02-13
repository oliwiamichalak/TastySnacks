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
        ZStack {
            NavigationView {
                List(viewModel.snacks) { snack in
                    SnackListCell(tastySnack: snack)
                        .onTapGesture {
                            viewModel.selectdSnack = snack
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("TastySnacks")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getSnacks()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)

            if viewModel.isShowingDetail {
                DetailView(tastySnack: viewModel.selectdSnack!, isShowingDetail: $viewModel.isShowingDetail)
            }

            if viewModel.isLoading {
                LoadingView()
            }
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
