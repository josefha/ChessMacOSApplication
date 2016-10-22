//
//  GameScene.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.


import SpriteKit
import GameplayKit


var squares:[SKSpriteNode] = []
var piecesInGraphic:[SKSpriteNode] = []

class GameScene: SKScene {
    
    var gameBoard: GameBoard = GameBoard()
    
    override func didMove(to view: SKView) {

        Graphics.initGraphics()
        addGraphicsToGameScene()
        gameBoard.createPieces()
    }
    
    func addGraphicsToGameScene(){
        for square in squares {
            addChild(square)
        }
        for piece in piecesInGraphic{
            piece.size = CGSize.init(width: self.size.height/9, height: self.size.height/9)
            addChild(piece)
        }
    }


    
    override func mouseDown(with event: NSEvent) {
        let click = event.locationInWindow
        let nodes = self.nodes(at: click)
        for node in nodes{
            if let name = node.name {
                if let posistion = GameBoard.stringToPosition(string: name){
                    self.gameBoard.positionSelected(click: posistion)
                }
            }
        }
    }
}

    
    //override func update(_ currentTime: TimeInterval) {
    //      Called before each frame is rendered
    //}

