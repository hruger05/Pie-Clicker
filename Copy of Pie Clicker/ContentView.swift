//
//  ContentView.swift
//  Copy of Pie Clicker
//
//  Created by Hudson Ruger on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    
    // Click variables
    @State var Click:Int = 0
    @State var CPC:Int = 0
    
    // Cheats
    @State var Cheat:Int = 0
    
    // Prestige variables
    @State var Prestige:Int = 0
    
    // Upgarade variables
    @State var Worker:Int = 0
    @State var cost:Int = 400
    @State var multiply:Int = 1 + 1/4
    @State var buyWorker: Int = 50
    
    // Misc. variables
    @State var glow: Bool = false
    
    // Minigame variables
    @State var minigamePoints: Int = 0
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("tablecloth")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack {
                    ZStack{
                        Image("logo")
                            .resizable()
                            .frame(width: 300, height: 150)
                        
                    Button("i"){
                        var cheat = Click + 200000
                        Click = cheat
                                }
                            .foregroundColor(.brown)
                    }
                    
                    VStack{
                        Spacer()
                        Text("\(Click)")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 75)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                        
                        Button {
                            Click = Click + (1 + CPC)
                        } label: {
                            Image("Pie")
                                .resizable()
                                .frame(width: 250, height: 250, alignment: .center)
                        }
                        .foregroundColor(.primary)
                        
                        HStack{
                            VStack{
                                Text("\(Prestige)")
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 75)
                                    .background(RoundedRectangle(cornerRadius: 25.0))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.brown)
                                
                            Button(action: {
                                var Reset = 0
                                Prestige = Click / 200000 + Prestige
                                Click = Reset
                                CPC = 1 * Prestige
                                }, label: {
                                Text("Prestige")
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 75)
                                    .background(RoundedRectangle(cornerRadius: 25.0))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.brown)
                                })
                            }
                        }
                        Spacer()
                        
                        Spacer()
                        HStack{
                            NavigationLink(destination: Upgrades(CPC: $CPC, Click: $Click)){Text("Upgrades")
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 75)
                                    .background(RoundedRectangle(cornerRadius: 25.0))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.brown)
                            }
                            NavigationLink(destination: Minigames (CPC: $CPC, Click: $Click, minigamePoints: $minigamePoints)){
                                Text("Minigames")
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 75)
                                    .background(RoundedRectangle(cornerRadius: 25.0))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.brown)
                            }
                        }
                    }
                }
                    .foregroundColor(.black)
                    .frame(width: 200, height: 75)
                    .font(.system(size: 30))
                }
            }
        }
    }

#Preview{
    ContentView()
}
