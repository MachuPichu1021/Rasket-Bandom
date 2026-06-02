//
//  ContentView.swift
//  Rasket Bandom
//
//  Created by Student on 6/1/26.
//
import SwiftUI
import SpriteKit

struct ContentView: View {
    private let gameScene = GameScene()
    
    var body: some View {
        VStack {
            SpriteView(scene: gameScene)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
