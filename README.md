# Chess-MacOS
Chess-MacOS är något jag skrev utanför mina studier. Det är en schack-platform för macOS, programmet är skrivet i Swift och använder sig av SpriteKit.

### Kort beskriving av kod: 
Om vi börjar med Knight.swift, klassen Knight ärver från klassen ChessPiece. Varje ChessPiece har en position på brädet, en pjästyp och en färg. För att räkna ut hur en knight får röra sig skapar jag en lista (possibleDirections) med vilka steg som är möjliga för just den pjästypen. Jag itererar sedan över stegen och om ett steg är lagligt (vilket jag kollar med hjälp av klassen ChessMoves) så lägger jag till steget i retur-listan om positionen är tom eller om det står en motståndarpjäs på den platsen. Queen.swift har en liknande struktur, men här loopas olika riktningar eftersom damen i schack kan välja hur långt den vill gå. Graphics.swift innehåller allt som har och göra med grafik och har några enkla funktioner för att uppdatera det grafiska. GameBoard.swift hanterar all logik i spelet och har funktioner som makeMove, changeTurnToMove och removePiece. GameScene.swift är den som startar spelet och lyssnar på input från användaren.

Detta var ett riktigt roligt lite hemmabygge som jag gjorde i höstas för att lära mig swift bättre. Allt är inte perfekt men jag är nöjd över strukturen och funktionaliteten som är implementerad. Här (GIF) finns en gif för att se det appen under användning.

TODO:
Finalize Checkmate. 
Pawn to queen.



