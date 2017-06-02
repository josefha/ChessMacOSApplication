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
    //returns true if position is on chessboard
    class private func IsPositionOnBoard(position:BoardPosition) -> Bool {
        let (c,i) = position
        return (i >= 1 && i <= 8 && c>="a" && c<="h")
    }
    
    //Moves N steps with the list of directions
    class func moveNsteps(position: BoardPosition, directions:[direction]) -> BoardPosition? {
        var finalposition:BoardPosition = position
        
        for direction in directions {
            let step = moveOneStep(position: finalposition, directions: direction)
            if (step != nil){
                finalposition = step!
            }
            else{
                return nil
            }
        }
        return finalposition
    }
    
    //Returns a position moved one direction
    //small characters as input
    class private func moveOneStep(position: BoardPosition, directions:direction) -> BoardPosition?{
        
        let charList:[Character] = ["A","a","b","c","d","e","f","g","h","i"]
        let (c,i) = position
        
        if let cp = charList.index(of: c){
        
            switch directions {
                case direction.up:
                    if (IsPositionOnBoard(position: (c,i+1))) { return (c,i+1) }
                case direction.down:
                    if (IsPositionOnBoard(position: (c,i-1))) { return (c,i-1) }
                case direction.left:
                    if (IsPositionOnBoard(position: (charList[cp-1],i))) { return (charList[cp-1],i) }
                case direction.right:
                    if (IsPositionOnBoard(position: (charList[cp+1],i))) { return (charList[cp+1],i) }
            }
        }
        return nil
    }
    
}
