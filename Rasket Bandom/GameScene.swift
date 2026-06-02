//
//  GameScene.swift
//  Rasket Bandom
//
//  Created by Student on 6/1/26.
//

import Foundation
import SwiftUI
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        setUpScene()
        setUpPlayers()
    }
    
    private func setUpScene() {
        backgroundColor = SKColor.black
        size = view!.bounds.size
    }
    
    private func setUpPlayers() {
        let player1guy1 = SKSpriteNode(imageNamed: "Player1")
        player1guy1.position = CGPoint(x: player1guy1.size.width + 350, y: player1guy1.size.height - 500)
        player1guy1.setScale(0.2)
        
        let player1guy2 = SKSpriteNode(imageNamed: "Player1")
        player1guy2.position = CGPoint(x: player1guy2.size.width + 500, y: player1guy2.size.height - 500)
        player1guy2.setScale(0.2)
        
        let player2guy1 = SKSpriteNode(imageNamed: "Player2")
        player2guy1.position = CGPoint(x: player2guy1.size.width + 250, y: player2guy1.size.height - 500)
        player2guy1.setScale(0.2)
        
        let player2guy2 = SKSpriteNode(imageNamed: "Player2")
        player2guy2.position = CGPoint(x: player2guy2.size.width + 100, y: player2guy2.size.height - 500)
        player2guy2.setScale(0.2)
        
        addChild(player1guy1)
        addChild(player1guy2)
        addChild(player2guy1)
        addChild(player2guy2)
    }
}
