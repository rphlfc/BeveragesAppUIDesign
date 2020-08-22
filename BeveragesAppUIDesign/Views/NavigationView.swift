//
//  NavigationView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "circle.grid.2x2.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Text("Drinks")
                .font(.system(size: 32))
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
            })
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
