//
//  DetailsView.swift
//  BeveragesAppUIDesign
//
//  Created by Raphael Cerqueira on 22/08/20.
//

import SwiftUI

struct DetailsView: View {
    @Binding var showDetails: Bool
    @Binding var selectedBeverage: Beverage
    
    var body: some View {
        ZStack {
            selectedBeverage.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        self.showDetails.toggle()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 12)
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                    })
                    .frame(width: 80, height: 50)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(25)
                }
                .padding()
                .foregroundColor(.white)
                
                ZStack(alignment: .bottom) {
                    VStack {
                        HStack(alignment: .top) {
                            Image(selectedBeverage.image)
                                .offset(x: -30)
                            
                            Spacer()
                            
                            VStack(alignment: .leading) {
                                Text(selectedBeverage.title)
                                    .font(.system(size: 19, weight: .medium))
                                
                                Text("Redbull")
                                    .font(.system(size: 40, weight: .bold))
                                
                                Text(selectedBeverage.subtitle)
                                    .font(.system(size: 19, weight: .medium))
                                
                                Text("$\(selectedBeverage.price)")
                                    .font(.system(size: 36, weight: .bold))
                                    .padding(.top)
                            }
                            .foregroundColor(.white)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    
                    ZStack(alignment: .bottom) {
                        VStack {
                            Spacer()
                            
                            HStack(alignment: .top) {
                                VStack {
                                    Text("Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives. Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives.")
                                        .fontWeight(.medium)
                                        .lineSpacing(10.0)
                                    
                                    Spacer()
                                        .frame(maxHeight: 80)
                                }
                                .frame(width: 240)
                                .padding(28)
                                .foregroundColor(Color(#colorLiteral(red: 0.3126512468, green: 0.3103967607, blue: 0.3143810034, alpha: 1)))
                                .background(Color.white)
                                .cornerRadius(30, corners: .topRight)
                                
                                Spacer()
                                
                                VStack {
                                    InfoView(title: "QUANTITY", value: "750")
                                    
                                    InfoView(title: "ALCOHOL", value: "1.3 %")
                                        .padding(.top)
                                    
                                    InfoView(title: "SUGAR", value: "5.7 %")
                                        .padding(.top)
                                }
                                .foregroundColor(.white)
                                .padding(.top, 32)
                                
                                Spacer()
                            }
                        }
                        .edgesIgnoringSafeArea(.bottom)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            HStack {
                                Text("Add to bag")
                                    .font(.system(size: 18, weight: .bold))
                                
                                Image(systemName: "bag")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                                    .padding(.leading, 8)
                            }
                            .frame(width: 180, height: 50)
                            .background(Color(#colorLiteral(red: 0.9987309575, green: 0, blue: 0.2684053481, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .offset(x: 90)
                        })
                    }
                }
            }
        }
    }
}

struct InfoView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 14))
                .fontWeight(.medium)
            
            Text(value)
                .font(.system(size: 28))
                .fontWeight(.bold)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(showDetails: .constant(false), selectedBeverage: .constant(beverageData[1]))
    }
}
