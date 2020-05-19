//
//  ContentView.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var stockListVM = StockListViewModel()
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black
        
        self.stockListVM.load()
    }
    
    var body: some View {
        
        let filteredStock = self.stockListVM.searchString.isEmpty ? self.stockListVM.stocks : self.stockListVM.stocks.filter { $0.symbol.starts(with: self.stockListVM.searchString.uppercased())}
        
        return NavigationView{
            
            VStack(spacing: 5){
                HStack{
                    Text("18 May, 2020")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding()
                    Spacer()
                }
                
                SearchView(searchString: self.$stockListVM.searchString)
                    .offset(y: -20)
                
                StockListView(stocks: filteredStock)
                
            }.background(Color.black)
                
                
            .navigationBarTitle("Stocks")
        }.edgesIgnoringSafeArea(Edge.Set(.bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
