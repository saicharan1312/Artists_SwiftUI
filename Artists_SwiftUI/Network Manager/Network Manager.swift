//
//  Network Manager.swift
//  Artists_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/9/24.
//

import Foundation
class APICall {
    static let sharedInstance = APICall()
    func fetchDataFromAPI<T: Decodable>(for: T.Type, url:String, completion: @escaping (T?,Error?)->()) {
        if let url = URL(string: url)
        {
            URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
                if let error = error {
                    print("Error found while fetching,\(error)")
                    completion(nil,error)
                }
                if let data = data {
                    do {
                        let serverData = try JSONDecoder().decode(T.self, from: data)
                        completion(serverData,nil)
                    }
                    catch {
                        print("Error found while decoding,\(error)")
                        completion(nil,error)
                    }
                }
            }.resume()
        }
    }
    
    func getImageData(url: String, closure: @escaping (Data?) -> ()) {
        if let imageUrl = URL(string: url) {
            URLSession.shared.dataTask(with: URLRequest(url: imageUrl)) { data, _, _ in
                if let imageData = data {
                    closure(imageData)
                }
            }.resume()
        }
    }
}
