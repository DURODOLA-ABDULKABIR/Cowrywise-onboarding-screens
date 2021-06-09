//
//  ApiPostRequest.swift
//  CowrywiseApp
//
//  Created by Decagon on 12.5.21.
//

import Foundation


enum APIError: Error {
    case responseProblem
    case decodingProblem
    case encodingProblem
}



struct APIRequest {
    let resourceURL: URL
    
    init(endpoint: String) {
        let resourceString = "https://609908f199011f001713ffb0.mockapi.io/api/v1/\(endpoint)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func saveDetails (_ detailsToSave:SignUpDetails, completion: @escaping(Result<SignUpDetails, APIError>) -> Void) {
        
        do {
            var urlRequest = URLRequest(url: resourceURL)
            urlRequest.httpMethod = "POST"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpBody = try JSONEncoder().encode(detailsToSave)
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) {Data, response, _ in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200,
                      let jsonData = Data else {
                    completion(.failure(.responseProblem))
                    return
                }
                do {
                    let messageData  = try JSONDecoder().decode(SignUpDetails.self, from: jsonData)
                    completion(.success(messageData))
                }catch {
                    completion(.failure(.decodingProblem))
                }
            }
            dataTask.resume()
        }catch{
            completion(.failure(.encodingProblem))
        }
    }
}

