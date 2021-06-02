//
//  RedLightView.swift
//  LightsApp
//
//  Created by Никита  on 02.06.2021.
//

import SwiftUI

struct ColorsView: View {
    var color: Color
    var brightness: Double
    var body: some View {
        Circle()
            .foregroundColor(color).brightness(brightness)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView(color: .red, brightness: -0.5)
    }
}
