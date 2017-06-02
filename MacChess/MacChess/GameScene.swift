//
//  GameScene.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.


import SpriteKit
import GameplayKit


var squares:[SKSpriteNode] = []

class GameScene: SKScene {
    
    var piecesInGraphic:[SKSpriteNode] = []
    var gameBoard: GameBoard = GameBoard()
    
    func removePiecesInGraphic(index:Int){
        self.piecesInGraphic.remove(at: index)
    }
    
    
    override func didMove(to view: SKView) {
        piecesInGraphic = Graphics.initGraphics()
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


    //function that handle a user click
    override func mouseDown(with event: NSEvent) {
        let click = event.locationInWindow
        let nodes = self.nodes(at: click)
        for node in nodes {
            if let name = node.name {
                if let posistion = GameBoard.stringToPosition(string: name){
                    self.gameBoard.positionSelected(click: posistion, piecesInGraphics: piecesInGraphic, gameScene: self)
                }
            }
        }
    }
}

