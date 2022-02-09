//
//  TastySnacksListViewModel.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

final class TastySnacksListViewModel: ObservableObject {

    @Published var snacks: [TastySnack] = []

    func getSnacks() {
        NetworkManager.shared.getTastySnacks { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let snacks):
                    self.snacks = snacks
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
