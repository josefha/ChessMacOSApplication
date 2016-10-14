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
        
        return []
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition){
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
