//
//  TastySnackListView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct TastySnackListView: View {
    var body: some View {
        NavigationView {
            List(MockData.snapleSnacks) { snack in
                SnackListCell(name: snack.name, price: snack.price, imageUrl: snack.imageURL)
            }
            .navigationTitle("TastySnacks")
        }
    }
}

struct TastySnackListView_Previews: PreviewProvider {
    static var previews: some View {
        TastySnackListView()
    }
}
