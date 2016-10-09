//
//  PawnPiece.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

class PawnPiece: ChessPiece {
    
    override func possibleMoves() -> [BoardPosition]{
        
        var possibleMoves:[BoardPosition] = []
        
        //TODO: Possible twosteps in First Postion
        //TODO: Turn into Queen on last row
        //TODO: Different moves depending on what piececolor.. (only for the pown piece)
        if let move = ChessMoves().moveOneStep(postion:self.position, directions: direction.up){
            possibleMoves.append(move)
        }
        if let move = ChessMoves().moveNsteps(position:self.position, directions: [direction.up, direction.right]){
            if(GameBoard().isEnemyPiece(colorOfPiece: self.colorOfPiece, position: move)){
                possibleMoves.append(move)
            }
        }
        if let move = ChessMoves().moveNsteps(position:self.position, directions: [direction.up, direction.left]){
            if(GameBoard().isEnemyPiece(colorOfPiece: self.colorOfPiece, position: move)){
                possibleMoves.append(move)
            }
        }
        return possibleMoves
    }
    
    func movePiece() {
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition){
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
