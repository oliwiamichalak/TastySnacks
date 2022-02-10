//
//  ErrorType.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import Foundation

enum ErrorType: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
