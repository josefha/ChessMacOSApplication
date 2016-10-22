//
//  rook.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 2016-10-14.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation

class Knight: ChessPiece {
    
    override func possibleMoves() -> [BoardPosition]{
        
        var possibleMoves:[BoardPosition] = []
        let possibleDirections:[[direction]] =
            [[.up,.up,.left],[.up,.up,.right],
            [.down,.down,.left],[.down,.down,.right],
            [.right,.right,.up],[.right,.right,.down],
            [.left,.left,.up],[.left,.left,.down]]
        
        for direction in possibleDirections {
                if let nextMove = ChessMoves.moveNsteps(position: self.position, directions: direction){
                    if(GameBoard().IspositionEmpty(position: nextMove)){
                        possibleMoves.append(nextMove)
                    }
                    else if(GameBoard().isEnemyPiece(colorOfPiece: self.colorOfPiece, position: nextMove)){
                        possibleMoves.append(nextMove)
                    }
                }
        }
        return possibleMoves
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition){
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
