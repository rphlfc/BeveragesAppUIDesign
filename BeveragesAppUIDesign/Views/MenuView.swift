//
//  MenuView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedItem: Int
    let options = ["Redbull", "Monster", "Heineken", "Budweiser"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 15) {
                ForEach(0 ..< self.options.count) { i in
                    Button(action: {
                        self.selectedItem = i
                    }, label: {
                        Text(self.options[i])
                            .font(.system(size: 22))
                            .fontWeight(.medium)
                            .frame(width: 150, height: 44)
                            .background(self.selectedItem == i ? Color(#colorLiteral(red: 0.9986785054, green: 0, blue: 0.2538941503, alpha: 1)) : Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645912051, alpha: 1)))
                            .foregroundColor(self.selectedItem == i ? .white : .black)
                            .cornerRadius(22)
                    })
                }
            }
        })
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedItem: .constant(1))
    }
}
