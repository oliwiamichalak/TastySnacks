//
//  OrderView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.snapleSnacks

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.snapleSnacks) { order in
                        SnackListCell(tastySnack: order)
                    }
                    .onDelete { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    }
                }
                .listStyle(GroupedListStyle())

                Button {

                } label: {
                    TastyButton(title: "Order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
