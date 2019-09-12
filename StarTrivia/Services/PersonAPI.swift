//
//  PersonAPI.swift
//  StarTrivia
//
//  Created by Jay Phillips on 9/11/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import Foundation

class PersonAPI {
    func getRandomPersonURLSession() {
        
        
        guard let url = URL(string: personURL) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String: Any] else { return }
                print(json)
            } catch {
                debugPrint(error.localizedDescription)
            }
            
            
            
            print("Data = \(data)")
            print("Response = \(response)")
            print("Error = \(error)")
        }
        task.resume()
    }
}
