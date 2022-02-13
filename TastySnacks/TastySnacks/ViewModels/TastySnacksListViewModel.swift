//
//  TastySnacksListViewModel.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

final class TastySnacksListViewModel: ObservableObject {

    @Published var snacks: [TastySnack] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectdSnack: TastySnack?

    func getSnacks() {
        isLoading = true

        NetworkManager.shared.getTastySnacks { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let snacks):
                    self.snacks = snacks
                    self.isLoading = false

                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData

                    case .invalidURL:
                        alertItem = AlertContext.invalidUrl

                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse

                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
