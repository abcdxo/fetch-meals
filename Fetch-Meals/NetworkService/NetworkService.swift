//
//  NetworkService.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import Foundation

enum APIError: Error {
    case badRequest
    case decodingError
}

extension URLRequest {
    static let allDesserts = URLRequest(url: URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!)
    static func dessertById(dessertID: String) -> URLRequest {
        let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(dessertID)")!
       return URLRequest(url: url)
    }
}

struct APIService: Decodable {
   
    static func request<T: Decodable>(urlRequest: URLRequest) async throws -> T {
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 400
        print(urlRequest)
        switch statusCode {
        case 200:
            do {
                return try JSONDecoder().decode(T.self, from: data)
            } catch {
                throw APIError.decodingError
            }
        default:
            throw APIError.badRequest
        }
    }
}
