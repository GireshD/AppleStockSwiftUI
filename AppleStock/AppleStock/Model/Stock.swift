//
//  Stock.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation

struct Stock: Decodable, Identifiable {
    
    let id: UUID = UUID.init()
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
