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
    
    var gameBoard: GameBoard = GameBoard()
    
    override func didMove(to view: SKView) {
        Graphics.initSquares(wHeight: self.size.height, wWidth: self.size.width)
        Graphics.initPieces()
        addSquaresToGameScene()
        
        gameBoard.placePiecesOnBoard()
    }
    
    func addSquaresToGameScene(){
        for square in squares {
            addChild(square)
        }
    }

    
    override func mouseDown(with event: NSEvent) {
        let click = event.locationInWindow
        let nodes = self.nodes(at: click)
        
        if let node = nodes.first {
            if let posistion = GameBoard.stringToPostion(string: node.name!){
                print(posistion)
                self.gameBoard.postionSelected(postion: posistion)
            }
        }
    }
    
    
    }

    
    //override func update(_ currentTime: TimeInterval) {
    //      Called before each frame is rendered
    //}

