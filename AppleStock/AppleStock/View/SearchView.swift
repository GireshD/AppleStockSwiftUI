//
//  SearchView.swift
//  AppleStock
//
//  Created by Giresh Dora on 18/05/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchString: String
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: $searchString)
                .foregroundColor(Color.primary)
                .padding()
            
            Spacer()
        }.foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchString: .constant(""))
    }
}
