//
//  TitleScene.swift
//  Rasket Bandom
//
//  Created by Student on 6/2/26.
//

import SpriteKit
import SwiftUI

class TitleScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        let title = SKLabelNode(text: "Rasket Bandom")
        title.fontName = "Avenir-Black"
        title.fontSize = 80
        title.position = CGPoint(x: size.width / 2, y: size.height / 2 + 150)
        addChild(title)
        
        let start = SKLabelNode(text: "Tap to Start")
        start.fontName = "Avenir"
        start.fontSize = 40
        start.position = CGPoint(x: size.width / 2, y: size.height / 2 - 50)
        start.alpha = 0
        addChild(start)
        
        let fade = SKAction.sequence([
            SKAction.fadeIn(withDuration: 1),
            SKAction.fadeOut(withDuration: 1)
        ])
        start.run(SKAction.repeatForever(fade))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = GameScene(size: size)
        scene.scaleMode = .resizeFill
        view?.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
    }
}
