//
//  Modifiers.swift
//  RMIT Casino Live
//
//  Created by admin on 5/8/24.
//

import Foundation
import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
            .shadow(color: Color.colorBlackTransparentRMIT,radius: 10)
        }
}

struct scoreLabelStyle: ViewModifier {
    func body(content: Content) -> some View {
            content
            .foregroundColor(Color("ColorWhiteRMIT"))
            .font(.system(size: 10, weight: .bold, design: .rounded))
        }
}

struct scoreNumberStyle: ViewModifier {
    func body(content: Content) -> some View {
            content
            .foregroundColor(Color.colorWhiteRMIT)
            .font(.system(size: 20, weight: .heavy, design: .rounded))
        }
}

struct scoreCapsuleStyle: ViewModifier {
    func body(content: Content) -> some View {
            content
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            .background(
                Capsule().foregroundColor(Color.colorBlackTransparentRMIT)
            )
        }
}

struct ReelImageModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
            .scaledToFit().frame(minWidth: 140, idealWidth: 200, maxWidth: 220, alignment: .center).modifier(ShadowModifier())
        }
}
    
struct IconImageModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
            .scaledToFit().frame(minWidth: 50, idealWidth: 60, maxWidth: 70, alignment: .center).modifier(ShadowModifier())
        }
}

struct BetCapsuleModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
            .foregroundColor(Color.colorWhiteRMIT)
                .font(.system(size: 25, weight: .heavy, design: .rounded))
                .modifier(ShadowModifier())
                .background(
                    Capsule().fill(
                        LinearGradient(gradient: Gradient(colors: [Color.colorYellowRMIT, Color.colorRedRMIT]), startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 80, height: 50, alignment: .center)
                )
        }
}

struct CasinoChipModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
            .scaledToFit()
                .modifier(ShadowModifier())
                .frame(height: 70)
        }
}


    
