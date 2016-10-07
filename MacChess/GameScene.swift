//
//  GameScene.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import SpriteKit
import GameplayKit


var squares:[SKSpriteNode] = []

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        Graphics().initSquares(wHeight: self.size.height, wWidth: self.size.width)
        addSquaresToGameScene()
        _ = ChessMoves().findSquare(postion: ("b",2))
    
    }
    
    func addSquaresToGameScene(){
        for square in squares {
            addChild(square)
        }
    }
    
    }
    
    //override func update(_ currentTime: TimeInterval) {
    //      Called before each frame is rendered
    //}

