//
//  Graphics.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 2016-10-07.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

class Graphics{
    
    class func initGraphics(){
        initSquares(wHeight: 600, wWidth: 600)
        initPieces()
    }
    
    class func movePiece(piece: SKSpriteNode, position: BoardPosition){
        piece.position = findSquare(squares: squares, position: position).position
    }
    
    class func removePiece(piece: SKSpriteNode){
        piece.removeFromParent()
    }
    
    //OBB !! - Need to know if it was black or white before it was changed.
//    class func resetSquareHighlights(positions: [BoardPosition]){
//        for position in positions {
//            let square = Graphics.findSquare(squares: squares, position: position)
//            square.color = SKColor.white
//        }
//    }
//    
    class func resetSquareHighlights(){
        
        var i = 1
        
        
        for square in squares {
            if i > 1 && i <= 8 {
                i = i + 1
            }
            else if i > 8 {
                i = 1
            }else {
                i = i + 1
            }
            
            if i % 2 == 0 {
                square.color = SKColor.white
            }
            else{
                square.color = SKColor.lightGray
            }

        }
    }
    
    //highlights squares that are possible to move to
    class func highlightPossibleMoves(squares: [SKSpriteNode], moves: [BoardPosition]){
        for move in moves{
            let sprite = Graphics.findSquare(squares: squares, position: move)
            sprite.color = SKColor.blue
        }
    }
    
    class func findGraphicalPiece(position: BoardPosition, squares: [SKSpriteNode], pieces: [SKSpriteNode]) -> SKSpriteNode?{
        let pieceposition = self.findSquare(squares: squares, position: position).position
        
        print(pieceposition)
        for piece in pieces {
            if piece.position == pieceposition{
                return piece
            }
        }
        return nil
    }
    
    //Return square:SKSpriteNode at specific position
    class func findSquare(squares: [SKSpriteNode], position: BoardPosition) -> SKSpriteNode {
        for square in squares {
            if square.name == GameBoard.boardpositionToString(position: position){
                return square
            }
        }
        return squares.first! // should never happen, return optional Boardpositioninstead ?
    }
    
    class func initPieces(){
        let pawnW1 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW1.position = findSquare(squares: squares, position: ("a",2)).position
        let pawnW2 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW2.position = findSquare(squares: squares, position: ("b",2)).position
        let pawnW3 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW3.position = findSquare(squares: squares, position: ("c",2)).position
        let pawnW4 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW4.position = findSquare(squares: squares, position: ("d",2)).position
        let pawnW5 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW5.position = findSquare(squares: squares, position: ("e",2)).position
        let pawnW6 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW6.position = findSquare(squares: squares, position: ("f",2)).position
        let pawnW7 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW7.position = findSquare(squares: squares, position: ("g",2)).position
        let pawnW8 = SKSpriteNode(imageNamed: "pawn-white")
        pawnW8.position = findSquare(squares: squares, position: ("h",2)).position
        
        let rookW1 = SKSpriteNode(imageNamed: "rook-white")
        rookW1.position = findSquare(squares: squares, position: ("a",1)).position
        let rookW2 = SKSpriteNode(imageNamed: "rook-white")
        rookW2.position = findSquare(squares: squares, position: ("h",1)).position
        
        let knightW1 = SKSpriteNode(imageNamed: "knight-white")
        knightW1.position = findSquare(squares: squares, position: ("b",1)).position
        let knightW2 = SKSpriteNode(imageNamed: "knight-white")
        knightW2.position = findSquare(squares: squares, position: ("g",1)).position
        
        let bishopW1 = SKSpriteNode(imageNamed: "bishop-white")
        bishopW1.position = findSquare(squares: squares, position: ("c",1)).position
        let bishopW2 = SKSpriteNode(imageNamed: "bishop-white")
        bishopW2.position = findSquare(squares: squares, position: ("f",1)).position
        
        let queenW = SKSpriteNode(imageNamed: "queen-white")
        queenW.position = findSquare(squares: squares, position: ("d",1)).position
        
        let kingW = SKSpriteNode(imageNamed: "king-white")
        kingW.position = findSquare(squares: squares, position: ("e",1)).position
        
        let pawnB1 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB1.position = findSquare(squares: squares, position: ("a",7)).position
        let pawnB2 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB2.position = findSquare(squares: squares, position: ("b",7)).position
        let pawnB3 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB3.position = findSquare(squares: squares, position: ("c",7)).position
        let pawnB4 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB4.position = findSquare(squares: squares, position: ("d",7)).position
        let pawnB5 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB5.position = findSquare(squares: squares, position: ("e",7)).position
        let pawnB6 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB6.position = findSquare(squares: squares, position: ("f",7)).position
        let pawnB7 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB7.position = findSquare(squares: squares, position: ("g",7)).position
        let pawnB8 = SKSpriteNode(imageNamed: "pawn-black")
        pawnB8.position = findSquare(squares: squares, position: ("h",7)).position
        
        
        let rookB1 = SKSpriteNode(imageNamed: "rook-black")
        rookB1.position = findSquare(squares: squares, position: ("a",8)).position
        let rookB2 = SKSpriteNode(imageNamed: "rook-black")
        rookB2.position = findSquare(squares: squares, position: ("h",8)).position
        
        let knightB1 = SKSpriteNode(imageNamed: "knight-black")
        knightB1.position = findSquare(squares: squares, position: ("b",8)).position
        let knightB2 = SKSpriteNode(imageNamed: "knight-black")
        knightB2.position = findSquare(squares: squares, position: ("g",8)).position
        
        let bishopB1 = SKSpriteNode(imageNamed: "bishop-black")
        bishopB1.position = findSquare(squares: squares, position: ("c",8)).position
        let bishopB2 = SKSpriteNode(imageNamed: "bishop-black")
        bishopB2.position = findSquare(squares: squares, position: ("f",8)).position
        
        let queenB = SKSpriteNode(imageNamed: "queen-black")
        queenB.position = findSquare(squares: squares, position: ("d",8)).position
        
        let kingB = SKSpriteNode(imageNamed: "king-black")
        kingB.position = findSquare(squares: squares, position: ("e",8)).position
        
        piecesInGraphic = [pawnW1,pawnW2,pawnW3,pawnW4,pawnW5,pawnW6,pawnW7,pawnW8,
                           pawnB1,pawnB2,pawnB3,pawnB4,pawnB5,pawnB6,pawnB7,pawnB8,
                           rookB1,rookB2,rookW1,rookW2, knightB1,knightB2,knightW1,
                           knightW2,bishopB1,bishopB2,bishopW1,bishopW2,queenB,
                           queenW,kingB,kingW]
    }
    
    
    class func initSquares(wHeight: CGFloat, wWidth: CGFloat){
        
        print("init the graphic")
        
        
        let windowHieght = CGFloat(600) //wHeight
        let windowWidth = CGFloat(600) //wWidth
        
        let squareSize = CGSize.init(width: windowHieght/8, height: windowWidth/8)
        
        let color1 = SKColor.white
        let color2 = SKColor.lightGray
        
        let a2 = SKSpriteNode(color: color1, size: squareSize)
        a2.name = "a2"
        let a4 = SKSpriteNode(color: color1, size: squareSize)
        a4.name = "a4"
        let a6 = SKSpriteNode(color: color1, size: squareSize)
        a6.name = "a6"
        let a8 = SKSpriteNode(color: color1, size: squareSize)
        a8.name = "a8"
        
        let b1 = SKSpriteNode(color: color1, size: squareSize)
        b1.name = "b1"
        let b3 = SKSpriteNode(color: color1, size: squareSize)
        b3.name = "b3"
        let b5 = SKSpriteNode(color: color1, size: squareSize)
        b5.name = "b5"
        let b7 = SKSpriteNode(color: color1, size: squareSize)
        b7.name = "b7"
        
        let c2 = SKSpriteNode(color: color1, size: squareSize)
        c2.name = "c2"
        let c4 = SKSpriteNode(color: color1, size: squareSize)
        c4.name = "c4"
        let c6 = SKSpriteNode(color: color1, size: squareSize)
        c6.name = "c6"
        let c8 = SKSpriteNode(color: color1, size: squareSize)
        c8.name = "c8"
        
        let d1 = SKSpriteNode(color: color1, size: squareSize)
        d1.name = "d1"
        let d3 = SKSpriteNode(color: color1, size: squareSize)
        d3.name = "d3"
        let d5 = SKSpriteNode(color: color1, size: squareSize)
        d5.name = "d5"
        let d7 = SKSpriteNode(color: color1, size: squareSize)
        d7.name = "d7"
        
        let e2 = SKSpriteNode(color: color1, size: squareSize)
        e2.name = "e2"
        let e4 = SKSpriteNode(color: color1, size: squareSize)
        e4.name = "e4"
        let e6 = SKSpriteNode(color: color1, size: squareSize)
        e6.name = "e6"
        let e8 = SKSpriteNode(color: color1, size: squareSize)
        e8.name = "e8"
        
        let f1 = SKSpriteNode(color: color1, size: squareSize)
        f1.name = "f1"
        let f3 = SKSpriteNode(color: color1, size: squareSize)
        f3.name = "f3"
        let f5 = SKSpriteNode(color: color1, size: squareSize)
        f5.name = "f5"
        let f7 = SKSpriteNode(color: color1, size: squareSize)
        f7.name = "f7"
        
        let g2 = SKSpriteNode(color: color1, size: squareSize)
        g2.name = "g2"
        let g4 = SKSpriteNode(color: color1, size: squareSize)
        g4.name = "g4"
        let g6 = SKSpriteNode(color: color1, size: squareSize)
        g6.name = "g6"
        let g8 = SKSpriteNode(color: color1, size: squareSize)
        g8.name = "g8"
        
        let h1 = SKSpriteNode(color: color1, size: squareSize)
        h1.name = "h1"
        let h3 = SKSpriteNode(color: color1, size: squareSize)
        h3.name = "h3"
        let h5 = SKSpriteNode(color: color1, size: squareSize)
        h5.name = "h5"
        let h7 = SKSpriteNode(color: color1, size: squareSize)
        h7.name = "h7"
        
        let b2 = SKSpriteNode(color: color2, size: squareSize)
        b2.name = "b2"
        let b4 = SKSpriteNode(color: color2, size: squareSize)
        b4.name = "b4"
        let b6 = SKSpriteNode(color: color2, size: squareSize)
        b6.name = "b6"
        let b8 = SKSpriteNode(color: color2, size: squareSize)
        b8.name = "b8"
        
        let a1 = SKSpriteNode(color: color2, size: squareSize)
        a1.name = "a1"
        let a3 = SKSpriteNode(color: color2, size: squareSize)
        a3.name = "a3"
        let a5 = SKSpriteNode(color: color2, size: squareSize)
        a5.name = "a5"
        let a7 = SKSpriteNode(color: color2, size: squareSize)
        a7.name = "a7"
        
        let d2 = SKSpriteNode(color: color2, size: squareSize)
        d2.name = "d2"
        let d4 = SKSpriteNode(color: color2, size: squareSize)
        d4.name = "d4"
        let d6 = SKSpriteNode(color: color2, size: squareSize)
        d6.name = "d6"
        let d8 = SKSpriteNode(color: color2, size: squareSize)
        d8.name = "d8"
        
        let c1 = SKSpriteNode(color: color2, size: squareSize)
        c1.name = "c1"
        let c3 = SKSpriteNode(color: color2, size: squareSize)
        c3.name = "c3"
        let c5 = SKSpriteNode(color: color2, size: squareSize)
        c5.name = "c5"
        let c7 = SKSpriteNode(color: color2, size: squareSize)
        c7.name = "c7"
        
        let f2 = SKSpriteNode(color: color2, size: squareSize)
        f2.name = "f2"
        let f4 = SKSpriteNode(color: color2, size: squareSize)
        f4.name = "f4"
        let f6 = SKSpriteNode(color: color2, size: squareSize)
        f6.name = "f6"
        let f8 = SKSpriteNode(color: color2, size: squareSize)
        f8.name = "f8"
        
        let e1 = SKSpriteNode(color: color2, size: squareSize)
        e1.name = "e1"
        let e3 = SKSpriteNode(color: color2, size: squareSize)
        e3.name = "e3"
        let e5 = SKSpriteNode(color: color2, size: squareSize)
        e5.name = "e5"
        let e7 = SKSpriteNode(color: color2, size: squareSize)
        e7.name = "e7"
        
        let h2 = SKSpriteNode(color: color2, size: squareSize)
        h2.name = "h2"
        let h4 = SKSpriteNode(color: color2, size: squareSize)
        h4.name = "h4"
        let h6 = SKSpriteNode(color: color2, size: squareSize)
        h6.name = "h6"
        let h8 = SKSpriteNode(color: color2, size: squareSize)
        h8.name = "h8"
        
        let g1 = SKSpriteNode(color: color2, size: squareSize)
        g1.name = "g1"
        let g3 = SKSpriteNode(color: color2, size: squareSize)
        g3.name = "g3"
        let g5 = SKSpriteNode(color: color2, size: squareSize)
        g5.name = "g5"
        let g7 = SKSpriteNode(color: color2, size: squareSize)
        g7.name = "g7"
        
        squares =                     [a1,a2,a3,a4,a5,a6,a7,a8,
                                       b1,b2,b3,b4,b5,b6,b7,b8,
                                       c1,c2,c3,c4,c5,c6,c7,c8,
                                       d1,d2,d3,d4,d5,d6,d7,d8,
                                       e1,e2,e3,e4,e5,e6,e7,e8,
                                       f1,f2,f3,f4,f5,f6,f7,f8,
                                       g1,g2,g3,g4,g5,g6,g7,g8,
                                       h1,h2,h3,h4,h5,h6,h7,h8]
        
        var xVal = CGFloat(windowWidth/16)
        var yVal = CGFloat(windowHieght/16)
        
        var i = 1
        
        for value in squares {
            if i > 1 && i <= 8 {
                yVal += windowWidth/8
                i += 1
            }
            else if i > 8{
                xVal += windowWidth/8
                yVal = CGFloat(windowWidth/16)
                i = 2
            }else{
                i += 1
            }
            value.zPosition = -1
            value.position = CGPoint(x: xVal, y:yVal)
        }
    }
}

