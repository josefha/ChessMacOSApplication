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
    
    
    
    
    func movePiece() {

    }
    
    func possibleMoves() -> [BoardPosition] {
        return ChessMoves().PosiblePownMoves(piece: self)
    }
    
    override init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition)
    {
        super.init(typeOfPiece: typeOfPiece, colorOfPiece: colorOfPiece, position: position)
    }
}
