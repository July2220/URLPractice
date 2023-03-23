//
//  NetworkManager.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//

import Foundation

class NetworkManager: ObservableObject { 
    
    @Published var beers = [Beer]() //ObservableObject作用：当NetworkManager的beers属性值发生更改时，ContentView会自动刷新以显示新的name值。
    
    func fetchData() {
        if let url = URL(string: "https://api.punkapi.com/v2/beers") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([Beer].self, from: safeData)
                            DispatchQueue.main.async {
                                self.beers = results
                            }
                        } catch {
                            print("error \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
