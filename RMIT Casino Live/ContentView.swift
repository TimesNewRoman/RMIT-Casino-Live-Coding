//
//  ContentView.swift
//  RMIT Casino Live
//
//  Created by admin on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    let icons = ["apple","bar","cherry","clover","diamond", "grape", "heart", "horseshoe","lemon","melon","money","orange"]
    
    @State private var reels = [0,1,2]
    
    //MARK: - Spin logic
    func spinReels() {
        reels[0] = Int.random(in: 0...icons.count)
        reels[1] = Int.random(in: 0...icons.count)
        reels[2] = Int.random(in: 0...icons.count)
    }
    
    //MARK: - Check winning logic
    //MARK: - Player winning logic
    //MARK: - Highscore logic
    //MARK: - Player losing logic
    //MARK: - Bet 20 logic
    //MARK: - Bet 10 logic
    //MARK: - Gameover
    //MARK: - Reset
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color.colorRedRMIT, Color.colorPurpleRMIT]),
                           startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                //MARK: - Logo
                LogoView(logoFileName: "rmit-casino-welcome-logo")
                
                //MARK: - Score & High Score
                HStack {
                    HStack {
                        Text("Your\nmoney".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.leading)
                        
                        Text("100")
                            .modifier(scoreNumberStyle())
                    }
                    .modifier(scoreCapsuleStyle())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                            .modifier(scoreNumberStyle())
                        
                        Text("High\nscore".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.trailing)
                    }
                    .modifier(scoreCapsuleStyle())
                    
                }
                
                //MARK: - Slot Machine
                VStack{
                    //MARK: - First Reel
                    ZStack {
                        Image("reel").resizable().modifier(ReelImageModifier())
                        Image(icons[reels[0]]).resizable().modifier(IconImageModifier())
                    }
                    
                    HStack {
                        //MARK: - Second Reel
                        ZStack {
                            Image("reel").resizable().modifier(ReelImageModifier())
                            Image(icons[reels[1]]).resizable().modifier(IconImageModifier())
                        }
                        Spacer()
                        //MARK: - Third Reel
                        ZStack {
                            Image("reel").resizable().modifier(ReelImageModifier())
                            Image(icons[reels[2]]).resizable().modifier(IconImageModifier())
                        }
                        
                    }
                    
                    //MARK: - Spin button
                    Button {
                        print("Spin")
                        spinReels()
                    } label: {
                        Image("spin").resizable().scaledToFill()
                            .modifier(ReelImageModifier())
                    }

                    
                }
                
                //MARK: - Footer
                HStack {
                    //MARK: - Footer
                    HStack(spacing: 40) {
                        Text("20").modifier(BetCapsuleModifier())
                        
                        Image("casino-chips").resizable()
                            .modifier(CasinoChipModifier())
                    }
                    
                    Spacer()
                    
                    //MARK: - 10
                    HStack(spacing: 40) {
                        Image("casino-chips").resizable()
                            .modifier(CasinoChipModifier())
                        Text("10").modifier(BetCapsuleModifier())
                    }
                }
                .padding(.horizontal, 20)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
