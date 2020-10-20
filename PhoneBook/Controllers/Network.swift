//
//  Network.swift
//  PhoneBook
//
//  Created by a_sid on 17.10.2020.
//

import Foundation

class Network {
    
    private struct Constants {
        static let getContacts: URL = URL(string: "https://raw.githubusercontent.com/ForestLamp/mobile-test-ios/master/json/generated-01.json")!
    }
    
    func getContacts(completion: @escaping ([People]?) -> ()) {
        let session = URLSession(configuration: .default)
        var request = URLRequest(url: Constants.getContacts)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print(error!)
                return
            }
            guard let data = data else { return }
            guard let response = response as? HTTPURLResponse else {
                return
            }
            let jsonDecoder = JSONDecoder()
            do {
                let people = try jsonDecoder.decode([People].self, from: data)
                completion(people)
            } catch {
                completion(nil)
                print(error)
            }
        }
        task.resume()
    }
    
}
