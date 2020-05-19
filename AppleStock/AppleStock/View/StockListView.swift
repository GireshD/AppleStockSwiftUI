//
//  StockListView.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]
    
    var body: some View {
        List(self.stocks, id: \.symbol){ stock in
            StockCellView(stock: stock)
        }
    }
}

struct StockCellView: View {
    let stock: StockViewModel

    var body: some View{

        HStack{
            
            VStack(alignment: .leading){
                Text(stock.symbol)
                    .font(.system(size: 22))
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                Text(stock.description)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                    
            }
            
            Spacer()
            
            VStack{
                Text(stock.price)
                    .foregroundColor(Color.white)
                    .font(.system(size: 22))
                
                Button(stock.change){
                    
                }
                .frame(width: 75)
                .padding(5)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(6)
                
            }
            
            
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        let stock = Stock(symbol: "Goog", description: "Google stock", price: 1200, change: "+0.23")
         return StockListView(stocks: [StockViewModel(stock: stock)])
    }
}
