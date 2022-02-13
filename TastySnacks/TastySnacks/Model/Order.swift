//
//  Order.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

final class Order: ObservableObject {

    @Published var items: [TastySnack] = []

    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }

    func add(_ tastySnack: TastySnack) {
        items.append(tastySnack)
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
