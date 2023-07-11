//
//  ContentView.swift
//  MotivationApp
//
//  Created by Jason Dubon on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    let quotes = [
        "We are what we repeatedly do. \n- Aristole",
        "Believe you can and you're halfway there. \n- Theodore Roosevelt",
        "The only limits in our life are those we impose on ourselves. \n- Bob Proctor",
        "The only true wisdom is in knowing you know nothing. \n- Socrates"
    ]
    
    let images = [
        "nature1",
        "nature2",
        "nature3",
        "nature5",
    ]
    
    @State var currentIndex = 0
    
    var body: some View {
        ZStack {
            Image(images[currentIndex])
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text(quotes[currentIndex])
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 300, height: 350)
                    .background(.ultraThinMaterial.opacity(0.8))
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.3), radius: 10)
                
                Button("Shuffle") {
                    // Next
                    currentIndex = (currentIndex + 1) % quotes.count
                    
                    // Shuffle
                    //currentIndex = Int.random(in: 0..<quotes.count)
                    
                }
                .frame(width: 150, height: 50)
                .foregroundColor(.black)
                .background(.cyan)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10)
            }
            .padding(.top, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
