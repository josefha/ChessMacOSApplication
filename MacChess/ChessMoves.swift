//
//  ChessMoves.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation

enum direction {
    case up, down, right, left
}

class ChessMoves {
    
    public func PosiblePownMoves(piece:ChessPiece) -> [BoardPosition]{
    
        var posibleMoves:[BoardPosition] = []
        
        //TODO: Possible twosteps in First Postion
        //TODO: Different moves depending on what piececolor.. (only for the pown piece)
        if let move = self.moveOneStep(postion:piece.position, directions: direction.up){
            posibleMoves.append(move)
        }
        if let move = self.moveNsteps(position:piece.position, directions: [direction.up, direction.right]){
            if(isEnemyPiece(colorOfPiece: piece.colorOfPiece, position: move)){
                posibleMoves.append(move)
            }
        }
        if let move = self.moveNsteps(position:piece.position, directions: [direction.up, direction.left]){
            if(isEnemyPiece(colorOfPiece: piece.colorOfPiece, position: move)){
                posibleMoves.append(move)
            }
        }
       return posibleMoves
    }
    
    //Returns true if targetPiece is an enemy
    func isEnemyPiece(colorOfPiece:PieceColor, position:BoardPosition) -> Bool{
        if let targetPiece = GameBoard().pieceOnPosion(postion: position){
            if colorOfPiece != targetPiece.colorOfPiece{
                return true
            }
        }
        return false
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
    
    //returns true if postion is on chessboard
    public func IsPositionOnBoard(postion:BoardPosition) -> Bool {
        let (c,i) = postion
        return (i >= 1 && i <= 8 && c>="a" && c<="h")
    }
    
    
    //returns a postion moved one direction
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
