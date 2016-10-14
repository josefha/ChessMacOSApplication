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

    var pieceSelected: ChessPiece? = nil
    var turnToMove: PieceColor = PieceColor.white
    
    init(){
        //Need to remove global var.. create getters and setters
        //createPieces()
    }
    
    //Moves a pieces in our game with a possible move.
    func makeMove(piece: ChessPiece, destination: BoardPosition){

        if pieceOnPosion(position: destination) != nil{
            removePiece(position: destination)
            if let gPiece = Graphics.findGraphicalPiece(position: destination, squares: squares, pieces: piecesInGraphic){
                Graphics.removePiece(piece: gPiece)
            }
            else{print("ERROR: Grapgics is not in sync - REMOVE")}
        }
        
        if let gPiece = Graphics.findGraphicalPiece(position: piece.position, squares: squares, pieces: piecesInGraphic){
            Graphics.movePiece(piece: gPiece, position: destination)
            piece.position = destination
        }
        else{print("ERROR: Grapgics is not in sync - MOVED")}
        
        pieceSelected = nil
        //changeTurnToMove()
    }

    


    //runs after every click, starts game logic
    func positionSelected(click: BoardPosition) {
        Graphics.resetSquareHighlights()
        
        if let piece = pieceSelected {
            if piece.possibleMoves().contains(where: { $0 == click}){
                makeMove(piece: piece, destination: click)
            }
            else{
                selectPiece(click: click)
            }
        }
        else if pieceSelected == nil {
            selectPiece(click: click)
        }
    }
    
    //Selects a piece and higjlights possibleMoves
    func selectPiece(click: BoardPosition){
        if let piece = pieceOnPosion(position: click){
            if piece.colorOfPiece == turnToMove{
                Graphics.highlightPossibleMoves(squares: squares, moves: piece.possibleMoves())
                pieceSelected = piece
            }
        }
    }
    
    
    //changes class var turnToMove to enemy color
    func changeTurnToMove(){
        if turnToMove == PieceColor.white {
            turnToMove = PieceColor.black
        }
        else {
            turnToMove = PieceColor.white
        }
    }
    
    //Returns a string representation of specific Boardposition
    class func boardpositionToString(position:BoardPosition) -> String{
        let (c,i):BoardPosition = position
        return "\(c)\(i)"
    }
    
    //Remove a chesspiece at position position
    func removePiece(position:BoardPosition){
        let piece = pieceOnPosion(position: position)
        piecesOnBoard = piecesOnBoard.filter() { $0 !== piece }
    }
    
    //Returns one piece at position if any else nil
    func pieceOnPosion(position:BoardPosition) -> ChessPiece? {
        for piece in piecesOnBoard {
            if piece.position == position {
                return piece
            }
        }
        return nil
    }
    
    //Returns true if targetPiece is an enemy
    func isEnemyPiece(colorOfPiece:PieceColor, position:BoardPosition) -> Bool{
        if let targetPiece = GameBoard().pieceOnPosion(position: position){
            if colorOfPiece != targetPiece.colorOfPiece{
                return true
            }
        }
        return false
    }
    
    //Returns true if position is empty
    func IspositionEmpty(position:BoardPosition) -> Bool{
        return (pieceOnPosion(position: position) == nil)
    }
    
    //Returns a BoardPoston from a string representation
    class func stringToPosition(string: String) -> BoardPosition? {
        let split = Array(string.characters)
        let string:String = String((split[1]))
        
        if let int:Int = Int(string) {
            return (split[0],int)
        }
        return nil
    }
    
    func createPieces(){
        let pawnPiece1 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("a",2))
        let pawnPiece2 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("b",2))
        let pawnPiece3 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("c",2))
        let pawnPiece4 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("d",2))
        let pawnPiece5 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("e",2))
        let pawnPiece6 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("f",2))
        let pawnPiece7 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("g",2))
        let pawnPiece8 = PawnPiece(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("h",2))
        
        piecesOnBoard.append(pawnPiece1)
        piecesOnBoard.append(pawnPiece2)
        piecesOnBoard.append(pawnPiece3)
        piecesOnBoard.append(pawnPiece4)
        piecesOnBoard.append(pawnPiece5)
        piecesOnBoard.append(pawnPiece6)
        piecesOnBoard.append(pawnPiece7)
        piecesOnBoard.append(pawnPiece8)
    }
}
