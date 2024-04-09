//
//  Minigames.swift
//  Copy of Pie Clicker
//
//  Created by Hudson Ruger on 1/25/24.
//

import SwiftUI

struct Minigames: View {
    
    @Binding var CPC: Int
    @Binding var Click: Int
    @Binding var minigamePoints: Int
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("tablecloth")
                    .resizable()
                VStack{
                    Text("Minigame Points")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    Text("\(minigamePoints)")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    
                    NavigationLink(destination: rockPaperScissors(minigamePoints: $minigamePoints)){
                        Text("Rock Paper Scissors")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 75)
                            .background(RoundedRectangle(cornerRadius: 25.0))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                            .padding()
                    }
                }
            }
        }
    }
}

struct Minigames_Previews: PreviewProvider {
    static var previews: some View {
        Minigames(CPC: .constant(882377345), Click: .constant(09835), minigamePoints: .constant(0))
    }
}

