//
//  Upgrades.swift
//  Copy of Pie Clicker
//
//  Created by Hudson Ruger on 1/25/24.
//

import SwiftUI

struct Upgrades: View {
    
    @Binding var CPC: Int
    @Binding var Click: Int
    @State var workerCost = 50
    @State var ovenCost = 300
    @State var bakeryCost = 1000
    @State var factoryCost = 15000
    
    @State var minigamePoints = 0
    @State var minigames = 50000
    
    var body: some View {
        ScrollView{
            ZStack{
                
                Image("tablecloth")
                    .resizable()
            
                VStack{
                
                
                    Text("\(Click)")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    Button(action: {
                        Click = Click + 1
                    }, label: {
                        Text("Pies")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 75)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                    })
                    
                    Divider()
                    
                    Text("\(workerCost)")
                        .foregroundColor(.white)
                        .frame(width: 75, height: 50)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    NavigationStack{
                        Button(action: {
                            if Click >= workerCost {
                                CPC = CPC + 1
                                Click = Click - workerCost
                            } else {
                                CPC = CPC
                            }
                        }, label: {
                            Text("Buy Worker")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 75)
                                .background(RoundedRectangle(cornerRadius: 25.0))
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        })
                        
                        Text("\(ovenCost)")
                            .foregroundColor(.white)
                            .frame(width: 100, height: 50)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                        
                        Button(action: {
                            if Click >= ovenCost {
                                CPC = CPC + 5
                                Click = Click - ovenCost
                            } else {
                                CPC = CPC
                            }
                        }, label: {
                            Text("Buy Oven")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 75)
                                .background(RoundedRectangle(cornerRadius: 25.0))
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        })
                        
                        Text("\(bakeryCost)")
                            .foregroundColor(.white)
                            .frame(width: 125, height: 50)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                        
                        Button(action: {
                            if Click >= bakeryCost {
                                CPC = CPC + 10
                                Click = Click - bakeryCost
                            } else {
                                CPC = CPC
                            }
                        }, label: {
                            Text("Buy Bakery")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 75)
                                .background(RoundedRectangle(cornerRadius: 25.0))
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        })
                        
                        Text("\(factoryCost)")
                            .foregroundColor(.white)
                            .frame(width: 150, height: 50)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                        
                        Button(action: {
                            if Click >= factoryCost {
                                CPC = CPC + 20
                                Click = Click - factoryCost
                            } else {
                                CPC = CPC
                            }
                        }, label: {
                            Text("Buy Factory")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 75)
                                .background(RoundedRectangle(cornerRadius: 25.0))
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        })
                        
                        Divider()
                        
                        Text("Minigame \nShop")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 75)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                    }
                    Text("\(minigamePoints)")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    Divider()
                    
                    
                }
            }
        }
    }
}
    
    struct Upgrades_Previews: PreviewProvider {
        static var previews: some View {
            Upgrades(CPC: .constant(09),
            Click: .constant(098035))
        }
    }

