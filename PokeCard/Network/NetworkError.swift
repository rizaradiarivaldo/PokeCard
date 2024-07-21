//
//  NetworkError.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 19/07/24.
//

import Foundation

enum NetworkError: Error, LocalizedError {
    case middlewareError(code: Int, message: String)
    case internetError(message: String)
    case decodingError(message: String)
    case unAuthorized
    
    var localizedDescription: String {
        switch self {
        case .middlewareError(code: _, let message):
            return message
        case .internetError:
            return ""
        case .decodingError(let message):
            return message
        case .unAuthorized:
            return "unauthorized"
        }
    }
    
    var isUnAuthorized: Bool {
        switch self {
        case .middlewareError:
            return false
        case .internetError:
            return false
        case .decodingError:
            return false
        case .unAuthorized:
            return true
        }
    }
}

enum ErrorState {
    case idle
    case middlewareError
    case internetError
    case unAuthorized
}



struct NetworkHandler: Decodable, Error, LocalizedError {
    let success: Bool
    let data: NetworkHandleData
    let message: String
    let code: Int
    let codeName: String
    
    enum CodingKeys: String, CodingKey {
        case success, data, message, code
        case codeName = "code_name"
    }
}

//MARK: - DataClass
struct NetworkHandleData: Decodable {
    
}
