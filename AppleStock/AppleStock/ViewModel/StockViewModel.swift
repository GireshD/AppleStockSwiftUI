//
//  StockViewModel.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation


struct StockViewModel{
    
    let stock: Stock
    
    var symbol: String{
        return self.stock.symbol.uppercased()
    }
    
    var description: String{
        return self.stock.description
    }
    
    var price: String{
        return String(format: "%.2f", self.stock.price)
    }
    
    var change: String{
        return self.stock.change
    }
}
