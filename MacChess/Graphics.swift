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
    
    func initPieces(){
        
        //if let a2 = squares.contains(where: {$0.name == "a2"}).first {pawn1.position = a2.postion}
        
    }
    
    func initSquares(wHeight: CGFloat, wWidth: CGFloat){
        
        print("init the graphic")
        
        let windowHieght = wHeight
        let windowWidth = wWidth
        
        let squareSize = CGSize.init(width: windowHieght/8, height: windowWidth/8)
        
        let a2 = SKSpriteNode(color: SKColor.white, size: squareSize)
        a2.name = "a2"
        let a4 = SKSpriteNode(color: SKColor.white, size: squareSize)
        a4.name = "a4"
        let a6 = SKSpriteNode(color: SKColor.white, size: squareSize)
        a6.name = "a6"
        let a8 = SKSpriteNode(color: SKColor.white, size: squareSize)
        a8.name = "a8"
        
        let b1 = SKSpriteNode(color: SKColor.white, size: squareSize)
        b1.name = "b1"
        let b3 = SKSpriteNode(color: SKColor.white, size: squareSize)
        b3.name = "b3"
        let b5 = SKSpriteNode(color: SKColor.white, size: squareSize)
        b5.name = "b5"
        let b7 = SKSpriteNode(color: SKColor.white, size: squareSize)
        b7.name = "b7"
        
        let c2 = SKSpriteNode(color: SKColor.white, size: squareSize)
        c2.name = "c2"
        let c4 = SKSpriteNode(color: SKColor.white, size: squareSize)
        c4.name = "c4"
        let c6 = SKSpriteNode(color: SKColor.white, size: squareSize)
        c6.name = "c6"
        let c8 = SKSpriteNode(color: SKColor.white, size: squareSize)
        c8.name = "c8"
        
        let d1 = SKSpriteNode(color: SKColor.white, size: squareSize)
        d1.name = "d1"
        let d3 = SKSpriteNode(color: SKColor.white, size: squareSize)
        d3.name = "d3"
        let d5 = SKSpriteNode(color: SKColor.white, size: squareSize)
        d5.name = "d5"
        let d7 = SKSpriteNode(color: SKColor.white, size: squareSize)
        d7.name = "d7"
        
        let e2 = SKSpriteNode(color: SKColor.white, size: squareSize)
        e2.name = "e2"
        let e4 = SKSpriteNode(color: SKColor.white, size: squareSize)
        e4.name = "e4"
        let e6 = SKSpriteNode(color: SKColor.white, size: squareSize)
        e6.name = "e6"
        let e8 = SKSpriteNode(color: SKColor.white, size: squareSize)
        e8.name = "e8"
        
        let f1 = SKSpriteNode(color: SKColor.white, size: squareSize)
        f1.name = "f1"
        let f3 = SKSpriteNode(color: SKColor.white, size: squareSize)
        f3.name = "f3"
        let f5 = SKSpriteNode(color: SKColor.white, size: squareSize)
        f5.name = "f5"
        let f7 = SKSpriteNode(color: SKColor.white, size: squareSize)
        f7.name = "f7"
        
        let g2 = SKSpriteNode(color: SKColor.white, size: squareSize)
        g2.name = "g2"
        let g4 = SKSpriteNode(color: SKColor.white, size: squareSize)
        g4.name = "g4"
        let g6 = SKSpriteNode(color: SKColor.white, size: squareSize)
        g6.name = "g6"
        let g8 = SKSpriteNode(color: SKColor.white, size: squareSize)
        g8.name = "g8"
        
        let h1 = SKSpriteNode(color: SKColor.white, size: squareSize)
        h1.name = "h1"
        let h3 = SKSpriteNode(color: SKColor.white, size: squareSize)
        h3.name = "h3"
        let h5 = SKSpriteNode(color: SKColor.white, size: squareSize)
        h5.name = "h5"
        let h7 = SKSpriteNode(color: SKColor.white, size: squareSize)
        h7.name = "h7"
        
        //black ones
        let b2 = SKSpriteNode(color: SKColor.black, size: squareSize)
        b2.name = "b2"
        let b4 = SKSpriteNode(color: SKColor.black, size: squareSize)
        b4.name = "b4"
        let b6 = SKSpriteNode(color: SKColor.black, size: squareSize)
        b6.name = "b6"
        let b8 = SKSpriteNode(color: SKColor.black, size: squareSize)
        b8.name = "b8"
        
        let a1 = SKSpriteNode(color: SKColor.black, size: squareSize)
        a1.name = "a1"
        let a3 = SKSpriteNode(color: SKColor.black, size: squareSize)
        a3.name = "a3"
        let a5 = SKSpriteNode(color: SKColor.black, size: squareSize)
        a5.name = "a5"
        let a7 = SKSpriteNode(color: SKColor.black, size: squareSize)
        a7.name = "a7"
        
        let d2 = SKSpriteNode(color: SKColor.black, size: squareSize)
        d2.name = "d2"
        let d4 = SKSpriteNode(color: SKColor.black, size: squareSize)
        d4.name = "d4"
        let d6 = SKSpriteNode(color: SKColor.black, size: squareSize)
        d6.name = "d6"
        let d8 = SKSpriteNode(color: SKColor.black, size: squareSize)
        d8.name = "d8"
        
        let c1 = SKSpriteNode(color: SKColor.black, size: squareSize)
        c1.name = "c1"
        let c3 = SKSpriteNode(color: SKColor.black, size: squareSize)
        c3.name = "c3"
        let c5 = SKSpriteNode(color: SKColor.black, size: squareSize)
        c5.name = "c5"
        let c7 = SKSpriteNode(color: SKColor.black, size: squareSize)
        c7.name = "c7"
        
        let f2 = SKSpriteNode(color: SKColor.black, size: squareSize)
        f2.name = "f2"
        let f4 = SKSpriteNode(color: SKColor.black, size: squareSize)
        f4.name = "f4"
        let f6 = SKSpriteNode(color: SKColor.black, size: squareSize)
        f6.name = "f6"
        let f8 = SKSpriteNode(color: SKColor.black, size: squareSize)
        f8.name = "f8"
        
        let e1 = SKSpriteNode(color: SKColor.black, size: squareSize)
        e1.name = "e1"
        let e3 = SKSpriteNode(color: SKColor.black, size: squareSize)
        e3.name = "e3"
        let e5 = SKSpriteNode(color: SKColor.black, size: squareSize)
        e5.name = "e5"
        let e7 = SKSpriteNode(color: SKColor.black, size: squareSize)
        e7.name = "e7"
        
        let h2 = SKSpriteNode(color: SKColor.black, size: squareSize)
        h2.name = "h2"
        let h4 = SKSpriteNode(color: SKColor.black, size: squareSize)
        h4.name = "h4"
        let h6 = SKSpriteNode(color: SKColor.black, size: squareSize)
        h6.name = "h6"
        let h8 = SKSpriteNode(color: SKColor.black, size: squareSize)
        h8.name = "h8"
        
        let g1 = SKSpriteNode(color: SKColor.black, size: squareSize)
        g1.name = "g1"
        let g3 = SKSpriteNode(color: SKColor.black, size: squareSize)
        g3.name = "g3"
        let g5 = SKSpriteNode(color: SKColor.black, size: squareSize)
        g5.name = "g5"
        let g7 = SKSpriteNode(color: SKColor.black, size: squareSize)
        g7.name = "g7"
        
        squares =                     [a1,a2,a3,a4,a5,a6,a7,a8,
                                       b1,b2,b3,b4,b5,b6,b7,b8,
                                       c1,c2,c3,c4,c5,c6,c7,c8,
                                       d1,d2,d3,d4,d5,d6,d7,d8,
                                       e1,e2,e3,e4,e5,e6,e7,e8,
                                       f1,f2,f3,f4,f5,f6,f7,f8,
                                       g1,g2,g3,g4,g5,g6,g7,g8,
                                       h1,h2,h3,h4,h5,h6,h7,h8]
        
        //Change to not be hard coded, this shit is uggly as fuck
        var xVal = CGFloat(windowWidth/16)
        var yVal = CGFloat(windowWidth/16)
        
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
        
        // SET UP PIECES
        let pawn1 = SKSpriteNode(imageNamed: "Pawn-white")
        pawn1.position = b3.position
//      addChild(pawn1)
        
    }
}

