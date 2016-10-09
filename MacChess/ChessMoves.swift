//
//  ChessMoves.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation
import SpriteKit

enum direction {
    case up, down, right, left
}

class ChessMoves {
    
    //returns true if postion is on chessboard
    func IsPositionOnBoard(postion:BoardPosition) -> Bool {
        let (c,i) = postion
        return (i >= 1 && i <= 8 && c>="a" && c<="h")
    }
    
    //Moves N steps with the list of directions
    func moveNsteps(position: BoardPosition, directions:[direction]) -> BoardPosition? {
        var finalPostion:BoardPosition = position
        
        for direction in directions {
            let step = moveOneStep(postion: finalPostion, directions: direction)
            if (step != nil){
                finalPostion = step!
            }
            else{
                return nil
            }
        }
        return finalPostion
    }
    
    //Returns a postion moved one direction
    //small characters as input
    func moveOneStep(postion: BoardPosition, directions:direction) -> BoardPosition?{
        
        let charList:[Character] = ["A","a","b","c","d","e","f","g","h","i"]
        let (c,i) = postion
        
        if let cp = charList.index(of: c){
        
            switch directions {
                case direction.up:
                    if (IsPositionOnBoard(postion: (c,i+1))) { return (c,i+1) }
                case direction.down:
                    if (IsPositionOnBoard(postion: (c,i-1))) { return (c,i-1) }
                case direction.left:
                    if (IsPositionOnBoard(postion: (charList[cp-1],i))) { return (charList[cp-1],i) }
                case direction.right:
                    if (IsPositionOnBoard(postion: (charList[cp+1],i))) { return (charList[cp+1],i) }
            }
        }
        return nil
    }
    
}
