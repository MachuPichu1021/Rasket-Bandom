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
    var player1guy1: SKSpriteNode = SKSpriteNode()
    var player1guy2: SKSpriteNode = SKSpriteNode()
    var player2guy1: SKSpriteNode = SKSpriteNode()
    var player2guy2: SKSpriteNode = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        setUpScene()
        setUpPlayers()
        setupGround()
        physicsWorld.gravity = CGVector(dx: 0, dy: -3)
    }
    
    private func setUpScene() {
        backgroundColor = SKColor.black
        size = view!.bounds.size
    }
    
    private func setUpPlayers() {
        player1guy1 = SKSpriteNode(imageNamed: "Player1")
        player1guy1.position = CGPoint(x: player1guy1.size.width + 300, y: player1guy1.size.height - 500)
        player1guy1.setScale(0.15)
        player1guy1.physicsBody = SKPhysicsBody(rectangleOf: player1guy1.size)
        player1guy1.physicsBody?.isDynamic = true
        player1guy1.physicsBody?.allowsRotation = true
        
        player1guy2 = SKSpriteNode(imageNamed: "Player1")
        player1guy2.position = CGPoint(x: player1guy2.size.width + 400, y: player1guy2.size.height - 500)
        player1guy2.setScale(0.15)
        player1guy2.physicsBody = SKPhysicsBody(rectangleOf: player1guy2.size)
        player1guy2.physicsBody?.isDynamic = true
        player1guy2.physicsBody?.allowsRotation = true
        
        player2guy1 = SKSpriteNode(imageNamed: "Player2")
        player2guy1.position = CGPoint(x: player2guy1.size.width + 100, y: player2guy1.size.height - 500)
        player2guy1.setScale(0.15)
        player2guy1.physicsBody = SKPhysicsBody(rectangleOf: player2guy1.size)
        player2guy1.physicsBody?.isDynamic = true
        player2guy1.physicsBody?.allowsRotation = true
        
        player2guy2 = SKSpriteNode(imageNamed: "Player2")
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
    
    private func setupGround() {
        let ground = SKSpriteNode()
        ground.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x: 0, y: 10), to: CGPoint(x: size.width, y: 10))
        ground.physicsBody?.isDynamic = false
        addChild(ground)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchX = touch.location(in: self).x
            print(self.size.width)
            print(touchX)
            
            if (touchX < self.size.width / 2) {
                player2guy1.physicsBody?.velocity = CGVector(dx: 0, dy: 300)
                player2guy2.physicsBody?.velocity = CGVector(dx: 0, dy: 300)
            } else {
                player1guy1.physicsBody?.velocity = CGVector(dx: 0, dy: 300)
                player1guy2.physicsBody?.velocity = CGVector(dx: 0, dy: 300)
            }
        }
        
    }
}
