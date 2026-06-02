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
        player1guy1.position = CGPoint(x: player1guy1.size.width + 300, y: player1guy1.size.height - 500)
        player1guy1.setScale(0.15)
        player1guy1.physicsBody = SKPhysicsBody(rectangleOf: player1guy1.size)
        player1guy1.physicsBody?.isDynamic = true
        player1guy1.physicsBody?.allowsRotation = true
        
        let player1guy2 = SKSpriteNode(imageNamed: "Player1")
        player1guy2.position = CGPoint(x: player1guy2.size.width + 400, y: player1guy2.size.height - 500)
        player1guy2.setScale(0.15)
        player1guy2.physicsBody = SKPhysicsBody(rectangleOf: player1guy2.size)
        player1guy2.physicsBody?.isDynamic = true
        player1guy2.physicsBody?.allowsRotation = true
        
        let player2guy1 = SKSpriteNode(imageNamed: "Player2")
        player2guy1.position = CGPoint(x: player2guy1.size.width + 100, y: player2guy1.size.height - 500)
        player2guy1.setScale(0.15)
        player2guy1.physicsBody = SKPhysicsBody(rectangleOf: player2guy1.size)
        player2guy1.physicsBody?.isDynamic = true
        player2guy1.physicsBody?.allowsRotation = true
        
        let player2guy2 = SKSpriteNode(imageNamed: "Player2")
        player2guy2.position = CGPoint(x: player2guy2.size.width, y: player2guy2.size.height - 500)
        player2guy2.setScale(0.15)
        player2guy2.physicsBody = SKPhysicsBody(rectangleOf: player2guy2.size)
        player2guy2.physicsBody?.isDynamic = true
        player2guy2.physicsBody?.allowsRotation = true
        
        addChild(player1guy1)
        addChild(player1guy2)
        addChild(player2guy1)
        addChild(player2guy2)
    }
}
