//
//  ContentView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    @State var selectedBeverage = beverageData[0]
    
    var body: some View {
        ZStack {
            Group {
                if showDetails {
                    DetailsView(showDetails: self.$showDetails, selectedBeverage: self.$selectedBeverage)
                } else {
                    ListView(showDetails: self.$showDetails, selectedBeverage: self.$selectedBeverage)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showDetails: false, selectedBeverage: beverageData[0])
    }
}
