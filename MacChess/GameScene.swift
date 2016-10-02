//
//  GameScene.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var squares:[SKSpriteNode] = []
    
    override func didMove(to view: SKView) {
        setUpGraphicsForBackground()
        print(self.size)
    }
    
    func setUpGraphicsForPieces(){

        //if let a2 = squares.contains(where: {$0.name == "a2"}).first {pawn1.position = a2.postion}
    
    }
    
    func setUpGraphicsForBackground (){
        let windowHieght = self.size.height
        let windowWidth = self.size.width
        
        
        let a2 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a4 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a6 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a8 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let b1 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b3 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b5 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b7 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let c2 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c4 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c6 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c8 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let d1 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d3 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d5 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d7 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let e2 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e4 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e6 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e8 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let f1 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f3 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f5 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f7 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let g2 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g4 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g6 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g8 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let h1 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h3 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h5 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h7 = SKSpriteNode(color: SKColor.white, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        //black ones
        let b2 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b4 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b6 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let b8 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let a1 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a3 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a5 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let a7 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let d2 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d4 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d6 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let d8 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let c1 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c3 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c5 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let c7 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let f2 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f4 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f6 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let f8 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let e1 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e3 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e5 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let e7 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let h2 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h4 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h6 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let h8 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        let g1 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g3 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g5 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        let g7 = SKSpriteNode(color: SKColor.black, size: CGSize.init(width: windowHieght/8, height: windowWidth/8))
        
        
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
            addChild(value)

        }
        
        // SET UP PIECES
        let pawn1 = SKSpriteNode(imageNamed: "Pawn-white")
        pawn1.position = b3.position
        addChild(pawn1)
        
        
        }
    }
    
    //override func update(_ currentTime: TimeInterval) {
    //      Called before each frame is rendered
    //}

