//
//  Order.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

final class Order: ObservableObject {

    @Published var items: [TastySnack] = []

    func add(_ tastySnack: TastySnack) {
        items.append(tastySnack)
    }
}
