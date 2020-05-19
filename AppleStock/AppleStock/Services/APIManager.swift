//
//  APIManager.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation


class APIManager {
    
    func getStocks(for urlString: String, completion: @escaping (([Stock]?, Error?) -> Void)) {
        
        guard let url = URL(string: urlString) else {
            fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url){ data, responce, error in
            
            guard let data = data, error == nil else {
                completion(nil,error)
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            if stocks == nil{
                completion(nil,nil)
            }else{
                completion(stocks,nil)
            }
        }.resume()
        
    }
}
