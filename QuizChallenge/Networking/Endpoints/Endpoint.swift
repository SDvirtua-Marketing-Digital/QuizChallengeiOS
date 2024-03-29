//
//  Endpoint.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation

enum MethodHTTP: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

protocol Endpoint {
    var baseUrl: URL { get }
    var fullPath: URL { get }
    var method: MethodHTTP { get }
    var path: String { get set }
    var parameters: [String: Any]? { get set }
    var headers: [String: String]? { get }
    
    func errorMessage(with statusCode: Int?) -> String
}

