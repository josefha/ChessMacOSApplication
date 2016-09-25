//
//  ChessPiece.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

enum PieceColor {
    case white
    case black
}
enum PieceType {
    case pawn
    case king
    case queen
    case knight
    case rook
    case bishop
    case horse
}


class ChessPiece {
    
    var position:BoardPosition
    let typeOfPiece:PieceType
    let colorOfPiece:PieceColor
    
    init(typeOfPiece:PieceType, colorOfPiece:PieceColor, position:BoardPosition) {
        self.typeOfPiece = typeOfPiece
        self.colorOfPiece = colorOfPiece
        self.position = position
    }
    
    
}
