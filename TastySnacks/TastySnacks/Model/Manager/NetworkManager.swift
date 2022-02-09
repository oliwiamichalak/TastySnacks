//
//  NetworkManager.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import Foundation
import SwiftUI

final class NetworkManager {
    static let shared = NetworkManager()

    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let tastySnacksUrl = baseUrl + "appetizers"

    private init() {}

    func getTastySnacks(completed: @escaping (Result<[TastySnack], ErrorType>) -> Void) {
        guard let url = URL(string: tastySnacksUrl) else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(TastySnackResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
}
