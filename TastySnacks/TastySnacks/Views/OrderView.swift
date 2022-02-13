//
//  OrderView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { order in
                            SnackListCell(tastySnack: order)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(GroupedListStyle())

                    Button {

                    } label: {
                        TastyButton(title: "Order")
                    }
                    .padding(.bottom, 25)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "emptyOrder", message: "You have no items in your order. Please, add some snack!")
                }
            }
            .navigationTitle("Order")
        }
    }

    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}
