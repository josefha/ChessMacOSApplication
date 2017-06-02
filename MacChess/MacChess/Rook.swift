//
//  rook.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 2016-10-14.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation

class Rook: ChessPiece {
    
    override func possibleMoves() -> [BoardPosition]{
        
        var possibleMoves:[BoardPosition] = []
        let possibleDirections:[direction] = [.up, .down, .right, .left]
        var MoveLeft = true
        var tempPosition = self.position
        
        for direction in possibleDirections {
            MoveLeft = true
            tempPosition = self.position
            
            while MoveLeft {
                if let nextMove = ChessMoves.moveNsteps(position: tempPosition, directions: [direction]){
                    if(GameBoard().IspositionEmpty(position: nextMove)){
                        tempPosition = nextMove
                        possibleMoves.append(tempPosition)
                    }
                    else if(GameBoard().isEnemyPiece(colorOfPiece: self.colorOfPiece, position: nextMove)){
                        possibleMoves.append(nextMove)
                        MoveLeft = false
                    }
                    else {
                        MoveLeft = false
                    }
                }
                else {
                   MoveLeft = false
                }

            }
        }
        
//        for move in possibleMoves {
//            let piecesOnBoeardCOPY = piecesOnBoard
//            
//            
//            if GameBoard().pieceOnPosion(position: move) != nil{
//                    GameBoard().removePiece(position: move)
//                }
//            self.position = move
//
//        }
        
        return possibleMoves
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition){
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
