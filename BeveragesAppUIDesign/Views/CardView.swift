//
//  CardView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct CardView: View {
    var beverage: Beverage
    @Binding var showDetails: Bool
    @Binding var selectedBeverage: Beverage
    
    var body: some View {
        Button(action: {
            self.selectedBeverage = self.beverage
            self.showDetails.toggle()
        }, label: {
            HStack {
                VStack(alignment: .leading) {
                    Text(beverage.title)
                    
                    Text("Redbull")
                        .font(.system(size: 32, weight: .bold))
                    
                    Text(beverage.subtitle)
                    
                    Text("$\(beverage.price)")
                        .font(.system(size: 32, weight: .bold))
                        .padding(.top, 40)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                Image(beverage.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60)
            }
        })
        .frame(maxWidth: .infinity)
        .padding(.vertical, 40)
        .padding(.horizontal, 35)
        .background(beverage.backgroundColor)
        .cornerRadius(35, corners: [.topRight, .bottomLeft])
        .buttonStyle(PlainButtonStyle())
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(beverage: beverageData[0], showDetails: .constant(false), selectedBeverage: .constant(beverageData[0]))
    }
}
