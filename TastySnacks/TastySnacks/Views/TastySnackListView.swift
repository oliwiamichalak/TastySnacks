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
    @State private var selectdSnack: TastySnack?

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.snacks) { snack in
                    SnackListCell(tastySnack: snack)
                        .onTapGesture {
                            selectdSnack = snack
                            isShowingDetail = true
                        }
                }
                .navigationTitle("TastySnacks")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getSnacks()
            }
            .blur(radius: isShowingDetail ? 20 : 0)

            if isShowingDetail {
                DetailView(tastySnack: selectdSnack!, isShowingDetail: $isShowingDetail)
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
