//
//  CardView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct CardView: View {
    var beverage: Beverage
    var animation: Namespace.ID
    
    var body: some View {
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
            
            Spacer(minLength: 0)
            
            Image(beverage.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: beverage.id, in: animation)
                .zIndex(1)
        }
        .padding(.vertical, 40)
        .padding(.horizontal, 35)
        .frame(height: 220)
        .background(beverage.backgroundColor)
        .cornerRadius(35, corners: [.topRight, .bottomLeft])
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(beverage: beverageData[0])
//    }
//}
