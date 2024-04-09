//
//  rockPaperScissors.swift
//  Copy of Pie Clicker
//
//  Created by Hudson Ruger on 1/25/24.
//

import SwiftUI

struct rockPaperScissors: View {
    
    @State var startGame = false
    
    @State var ai = ""
    @State var user = ""
    
    @State var win = 0
    @State var tie = 0
    @State var lose = 0
    
    @Binding var minigamePoints: Int
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    Image("tablecloth")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    VStack {
                        
                        HStack{
                            Text("Wins: \(win)")
                                .padding()
                            Text("Losses: \(lose)")
                                .padding()
                            Text(("Ties: \(tie)"))
                                .padding()
                        }
                        .padding()
                        
                        Button(action: {
                            
                            startGame = true
                            
                        }, label: {
                            Text("Start Game")
                        })
                        
                        Text("\(user)")
                            .padding()
                        
                        Text("\(ai)")
                            .padding()
                        
                        HStack{
                            
                            Button(action: {
                                
                                if startGame == true {
                                    user = "Rock"
                                    aiChoice()
                                    
                                    if ai == "Rock" {
                                        tie += 1
                                    } else if ai == "Paper" {
                                        lose += 1
                                    } else if ai == "Scissors" {
                                        win += 1
                                    }
                                    
                                } else {
                                    user = ""
                                    ai = ""
                                }
                                
                            }, label: {
                                Text("Rock")
                            })
                            
                            Button(action: {
                                if startGame == true {
                                    user = "Paper"
                                    aiChoice()
                                    
                                    if ai == "Rock" {
                                        win += 1
                                    } else if ai == "Paper" {
                                        tie += 1
                                    } else if ai == "Scissors" {
                                        lose += 1
                                    }
                                    
                                } else {
                                    user = ""
                                    ai = ""
                                }
                                
                            }, label: {
                                Text("Paper")
                            })
                            
                            Button(action: {
                                if startGame == true {
                                    user = "scissors"
                                    aiChoice()
                                    
                                    if ai == "Rock" {
                                        lose += 1
                                    } else if ai == "Paper" {
                                        win += 1
                                    } else if ai == "Scissors" {
                                        tie += 1
                                    }
                                    
                                } else {
                                    user = ""
                                    ai = ""
                                }
                                
                            }, label: {
                                Text("Scissors")
                            })
                        }
                        Button(action: {
                            
                            startGame = false
                            
                            user = ""
                            ai = ""
                            
                            win = 0
                            lose = 0
                            tie = 0
                            
                        }, label: {
                            Text("End Game")
                        })
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
    func aiChoice() {
        
        let aiNum = Int.random(in: 1...3)
        
        if aiNum == 1 {
            ai = "Rock"
        } else if aiNum == 2 {
            ai = "Paper"
        } else if aiNum == 3 {
            ai = "Scissors"
        }
    }
}
