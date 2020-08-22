//
//  ListView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct ListView: View {
    @State var menuSelectedItem = 0
    @Binding var showDetails: Bool
    @Binding var selectedBeverage: Beverage
    
    var body: some View {
        VStack {
            NavigationView()
            
            MenuView(selectedItem: self.$menuSelectedItem)
                .padding(.top)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 30) {
                    ForEach(beverageData) { beverage in
                        CardView(beverage: beverage, showDetails: self.$showDetails, selectedBeverage: self.$selectedBeverage)
                    }
                }
            })
            .padding(.top)
        }
        .padding(.horizontal, 20)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(menuSelectedItem: 1, showDetails: .constant(false), selectedBeverage: .constant(beverageData[0]))
    }
}
