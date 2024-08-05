//
//  LogoView.swift
//  RMIT Casino Live
//
//  Created by admin on 5/8/24.
//

import SwiftUI

struct LogoView: View {
    let logoFileName: String
    
    var body: some View {
        Image(logoFileName)
            .resizable()
            .scaledToFit()
            .frame(minWidth: 250, idealWidth: 280,
                   maxWidth: 320,
                   alignment: .center)
            .modifier(ShadowModifier())
    }
}

#Preview {
    LogoView(logoFileName: "rmit-casino-welcome-logo")
}
