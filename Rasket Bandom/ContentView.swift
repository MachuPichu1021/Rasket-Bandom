//
//  ContentView.swift
//  Rasket Bandom
//
//  Created by Student on 6/1/26.
//
import SwiftUI
import SpriteKit

struct ContentView: View {
    private let titleScene = TitleScene(size: UIScreen.main.bounds.size)
    
    var body: some View {
        SpriteView(scene: titleScene)
            .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}
