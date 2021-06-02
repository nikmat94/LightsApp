//
//  ContentView.swift
//  LightsApp
//
//  Created by Никита  on 02.06.2021.
//

import SwiftUI

enum Colors {
    case red
    case yellow
    case green
}

struct ContentView: View {

    @State private var red = ColorsView(color: .red, brightness: -0.5)
    @State private var yellow = ColorsView(color: .yellow, brightness: -0.5)
    @State private var green = ColorsView(color: .green, brightness: -0.5)
    @State private var currentState = Colors.red
    @State private var currentLabel = "Start"
    
    var body: some View {
        VStack {
            red
            yellow
            green
            Spacer()
            Button(currentLabel) {
                currentLabel = "Next"
                
                switch currentState {
                case .red:
                    green.brightness = -0.5
                    red.brightness = 0
                    currentState = .yellow
                case .yellow:
                    red.brightness = -0.5
                    yellow.brightness = 0
                    currentState = .green
                default:
                    yellow.brightness = -0.5
                    green.brightness = 0
                    currentState = .red
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

