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
            ZStack {
                VStack {
                    List {
                        ForEach(MockData.snapleSnacks) { order in
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

                if orderItems.isEmpty {
                    EmptyState(imageName: "emptyOrder", message: "You have no items in your order. Please, add some snack!")
                }
            }
            .navigationTitle("Order")
        }
    }

    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
