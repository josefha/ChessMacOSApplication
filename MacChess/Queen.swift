//
//  rook.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 2016-10-14.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation

class Queen: ChessPiece {
    
    override func possibleMoves() -> [BoardPosition]{
        
        var possibleMoves:[BoardPosition] = []
        let possibleDirections:[[direction]] = [[.up,.left],[.up,.right],[.down,.left],[.down,.right],[.up],[.down],[.left],[.right]]
        var MoveLeft = true
        var tempPosition = self.position
        
        for direction in possibleDirections {
            MoveLeft = true
            tempPosition = self.position
            
            while MoveLeft {
                if let nextMove = ChessMoves.moveNsteps(position: tempPosition, directions: direction){
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
        return possibleMoves
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition){
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
