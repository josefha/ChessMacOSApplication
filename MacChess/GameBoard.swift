//
//  GameBoard.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation

typealias BoardPosition = (Character, Int)

var piecesOnBoard:[ChessPiece] = []

class GameBoard{
    
    var positionSelected:BoardPosition? = nil
    var turnToMove:PieceColor = PieceColor.white
    
    init(){}
    
    func placePiecesOnBoard(){
        let pawnPiece1 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("a",2))
        let pawnPiece2 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("b",2))
        let pawnPiece3 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("c",2))
        let pawnPiece4 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("d",2))
        let pawnPiece5 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("e",2))
        let pawnPiece6 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("f",2))
        let pawnPiece7 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("g",2))
        let pawnPiece8 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("h",2))
        let pawnPiece9 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("c",3))
        
        
        
        
        piecesOnBoard.append(pawnPiece1)
        piecesOnBoard.append(pawnPiece2)
        piecesOnBoard.append(pawnPiece3)
        piecesOnBoard.append(pawnPiece4)
        piecesOnBoard.append(pawnPiece5)
        piecesOnBoard.append(pawnPiece6)
        piecesOnBoard.append(pawnPiece7)
        piecesOnBoard.append(pawnPiece8)
        piecesOnBoard.append(pawnPiece9)
    }
    
    
    
    
    func boardPostionToString(position:BoardPosition) -> String{
        let (c,i):BoardPosition = position
        return "\(c)\(i)"
    }
    
    //Remove a chesspiece at postion postion
    func removePiece(position:BoardPosition){
        let piece = pieceOnPosion(postion: position)
        piecesOnBoard = piecesOnBoard.filter() { $0 !== piece }
    }
    
    //Returns one piece at postion if any else nil
    func pieceOnPosion(postion:BoardPosition) -> ChessPiece? {
        for piece in piecesOnBoard {
            if piece.position == postion {
                return piece
            }
        }
        return nil
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
    
    //Returns true if position is empty
    func IsPostionEmpty(postion:BoardPosition) -> Bool{
        return (pieceOnPosion(postion: postion) == nil)
    }
}
