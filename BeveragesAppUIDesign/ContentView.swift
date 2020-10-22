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
    @Namespace var animation
    
    var body: some View {
        ZStack {
            ListView(showDetails: self.$showDetails, selectedBeverage: self.$selectedBeverage, animation: animation)
            
            if showDetails {
                DetailsView(showDetails: self.$showDetails, selectedBeverage: self.$selectedBeverage, animation: animation)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showDetails: false, selectedBeverage: beverageData[0])
    }
}
