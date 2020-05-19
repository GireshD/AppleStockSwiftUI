//
//  StockListViewModel.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation


class StockListViewModel: ObservableObject{
    
    @Published var searchString: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load(){
        fetchStocks()
    }
    
    private func fetchStocks(){
        APIManager().getStocks(for: "https://silicon-rhinoceros.glitch.me/stocks") { (stocks, error) in
            if let stocks = stocks{
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
}
