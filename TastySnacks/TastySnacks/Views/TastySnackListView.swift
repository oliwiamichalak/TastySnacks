//
//  TastySnackListView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct TastySnackListView: View {

    @StateObject var viewModel = TastySnacksListViewModel()
    @State private var isShowingDetail = false

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.snacks) { snack in
                    SnackListCell(tastySnack: snack)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                .navigationTitle("TastySnacks")
            }
            .onAppear {
                viewModel.getSnacks()
            }

            if isShowingDetail {
                DetailView(tastySnack: MockData.sampleSnack, isShowingDetail: $isShowingDetail)
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
