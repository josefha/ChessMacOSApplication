//
//  GameBoard.swift
//  MacChess
//
//  Created by Josef Hansson-Karakoca on 23/09/16.
//  Copyright © 2016 Josef Hansson-Karakoca. All rights reserved.
//

import Foundation
import SpriteKit

typealias BoardPosition = (Character, Int)


var piecesOnBoard:[ChessPiece] = []

class GameBoard{

    var pieceSelected: ChessPiece? = nil
    var turnToMove: PieceColor = PieceColor.white
    var check: Bool = false
    
    init(){}
    
    //return pieceColor of opposite player
    func enemyColor(color: PieceColor) -> PieceColor {
        if color == .white {
            return .black
        }
        else {
            return .white
        }
    }
    
    //Moves a pieces in our game with a possible move.
    func makeMove(piece: ChessPiece, destination: BoardPosition, piecesInGraphics: [SKSpriteNode], gameScene: GameScene){
        if pieceOnPosion(position: destination) != nil{
            if let enemyPiece = Graphics.findGraphicalPiece(position: destination, squares: squares, pieces: piecesInGraphics){
                Graphics.removePiece(piece: enemyPiece, piecesInGraphics: piecesInGraphics, gameScene: gameScene)
                removePiece(position: destination)
            }
            else{print("ERROR: Graphics is not in sync - REMOVE")}
        }
        
        if let gPiece = Graphics.findGraphicalPiece(position: piece.position, squares: squares, pieces: piecesInGraphics){
            Graphics.movePiece(piece: gPiece, position: destination)
            piece.position = destination
        }
        else{print("ERROR: Graphics is not in sync - MOVED")}
        
        pieceSelected = nil
        changeTurnToMove()
        
        
        //note done, Change pawn to Queen on last row.
        if piece.typeOfPiece == .pawn {
            let (_,i) = piece.position
            if ((i == 8 && piece.colorOfPiece == .white) || (i == 1 && piece.colorOfPiece == .black)){
                print("Change pawn to Queen")
            }
        }
        
        if KingInCheckPosition() == true {
            print("CHECK \(turnToMove)")
            check = true
        }
    }

    


    //runs after every click, starts game logic
    func positionSelected(click: BoardPosition, piecesInGraphics: [SKSpriteNode], gameScene: GameScene) {
        Graphics.resetHighlights()
        
        if let piece = pieceSelected {
            if piece.possibleMoves().contains(where: { $0 == click}){
                makeMove(piece: piece, destination: click, piecesInGraphics: piecesInGraphics, gameScene: gameScene)
            }
            else{
                if let _ = pieceOnPosion(position: click){
                    selectPiece(click: click)
                }
                else{
                    pieceSelected = nil
                }
            }
        }
        else if pieceSelected == nil {
            selectPiece(click: click)
        }
        else {
            pieceSelected = nil
        }
    }
    
    //Selects a piece and higjlights possibleMoves
    func selectPiece(click: BoardPosition){
        if let piece = pieceOnPosion(position: click){
            if piece.colorOfPiece == turnToMove{
                print(piece.typeOfPiece)
                Graphics.highlightPossibleMoves(squares: squares, moves: piece.possibleMoves())
                pieceSelected = piece
            }
        }
    }
    
    
    //changes class var turnToMove to enemy color
    func changeTurnToMove(){
        if turnToMove == .white {
            turnToMove = .black
        }
        else {
            turnToMove = .white
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
    
    //obs not finished
    func checkIfKingNotInCheckPostionAfterMove(){
        if KingInCheckPosition() == true {
            print("CHECK CHECK")
        }
    }
    
    //returns true if king is in check postion
    func KingInCheckPosition() -> Bool {
        for piece in piecesOnBoard {
            if piece.colorOfPiece == enemyColor(color: turnToMove) {
                if piece.possibleMoves().contains(where: { $0 == kingsPosition(color: turnToMove, pieces: piecesOnBoard)! }){
                    return true
                }
            }
        }
        return false
    }
    
    //Returns BoeardPostion of the king piece
    func kingsPosition(color:PieceColor, pieces:[ChessPiece]) -> BoardPosition?{
        for piece in pieces {
            if piece.colorOfPiece == color && piece.typeOfPiece == PieceType.king{
                return piece.position
            }
        }
        return nil
    }
    
    //inits the board pieces
    func createPieces(){
        let pawn1W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("a",2))
        let pawn2W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("b",2))
        let pawn3W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("c",2))
        let pawn4W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("d",2))
        let pawn5W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("e",2))
        let pawn6W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("f",2))
        let pawn7W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("g",2))
        let pawn8W = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.white, position:("h",2))
        
        let pawn1B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("a",7))
        let pawn2B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("b",7))
        let pawn3B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("c",7))
        let pawn4B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("d",7))
        let pawn5B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("e",7))
        let pawn6B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("f",7))
        let pawn7B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("g",7))
        let pawn8B = Pawn(typeOfPiece:PieceType.pawn, colorOfPiece: PieceColor.black, position:("h",7))
        
        let rook1W = Rook(typeOfPiece:PieceType.rook, colorOfPiece: PieceColor.white, position:("a",1))
        let rook2W = Rook(typeOfPiece:PieceType.rook, colorOfPiece: PieceColor.white, position:("h",1))
        
        let rook1B = Rook(typeOfPiece:PieceType.rook, colorOfPiece: PieceColor.black, position:("a",8))
        let rook2B = Rook(typeOfPiece:PieceType.rook, colorOfPiece: PieceColor.black, position:("h",8))
        
        let knight1W = Knight(typeOfPiece:PieceType.knight, colorOfPiece: PieceColor.white, position:("b",1))
        let knight2W = Knight(typeOfPiece:PieceType.knight, colorOfPiece: PieceColor.white, position:("g",1))
        
        let knight1B = Knight(typeOfPiece:PieceType.knight, colorOfPiece: PieceColor.black, position:("b",8))
        let knight2B = Knight(typeOfPiece:PieceType.knight, colorOfPiece: PieceColor.black, position:("g",8))
        
        let bishop1W = Bishop(typeOfPiece:PieceType.bishop, colorOfPiece: PieceColor.white, position:("c",1))
        let bishop2W = Bishop(typeOfPiece:PieceType.bishop, colorOfPiece: PieceColor.white, position:("f",1))
        
        let bishop1B = Bishop(typeOfPiece:PieceType.bishop, colorOfPiece: PieceColor.black, position:("c",8))
        let bishop2B = Bishop(typeOfPiece:PieceType.bishop, colorOfPiece: PieceColor.black, position:("f",8))
        
        let kingW = King(typeOfPiece:PieceType.king, colorOfPiece: PieceColor.white, position:("e",1))
        let kingB = King(typeOfPiece:PieceType.king, colorOfPiece: PieceColor.black, position:("e",8))
        
        let queenW = Queen(typeOfPiece:PieceType.queen, colorOfPiece: PieceColor.white, position:("d",1))
        let queenB = Queen(typeOfPiece:PieceType.queen, colorOfPiece: PieceColor.black, position:("d",8))
        
        
        
        piecesOnBoard = [pawn1W,pawn2W,pawn3W,pawn4W,pawn5W,pawn6W,pawn7W,pawn8W,
                        pawn1B,pawn2B,pawn3B,pawn4B,pawn5B,pawn6B,pawn7B,pawn8B,
                        rook1B,rook2B,rook1W,rook2W,knight1W,knight2W, knight1B,
                        knight2B, bishop1W, bishop2W, bishop1B, bishop2B, kingB,
                        kingW,queenB,queenW]
    }
}
