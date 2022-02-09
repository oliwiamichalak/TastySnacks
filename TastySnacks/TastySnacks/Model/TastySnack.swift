//
//  TastySnack.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import Foundation

struct TastySnack: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MockData {
    static let sampleSnack = TastySnack(
        id: 123,
        name: "test snack",
        description: "super tasty, this a description for the snack!",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )

    static let snapleSnacks = [sampleSnack, sampleSnack, sampleSnack, sampleSnack]
}
