# COMMAND LINE TIC TAC TOE

ASSIGNMENT
* Build a tic-tac-toe game on the command line where two human players can play against each other and the board is 
displayed in between turns.
* Think about how you would set up the different elements within the game… What should be a class? Instance variable? 
Method? A few minutes of thought can save you from wasting an hour of coding.
* Build your game, taking care to not share information between classes any more than you have to.


NEXT UP:
- how to check for win conditions? refer to a hash?
- player 1 function and player 2 function, player 1 calls player 2 at end of turn (class player?)

LOG:
--- Thursday April 29th ---
Day two of working on Tic Tac Toe. 
- Created a class for "the game" called TicTacToe that keeps track of the play field through an array of arrays called @@field
- Player classes inherit from TicTacToe class and can make adjustments to @@field
- might have to adjust the play field class, maybe integrate it to class TicTacToe
- at the moment, TicTacToe.change_value allows players to select a field by giving integer values (0, 1, 2) for x, y values matching @@field coordinates

--- Tuesday April 27th ---
Day one of Tic Tac Toe.
- Playing around, figuring stuff out
- created a class for the play field, each square being an instance that takes orders
- each square has three statuses: empty, X, or O
- win conditions for reference:
        1: ([0][0], [0][1], [0][2])
        2: ([1][0], [1][1], [1][2])
        3: ([2][0], [2][1], [2][2])

        4: ([0][0], [1][0], [2][0])
        5: ([0][1], [1][1], [2][1])
        6: ([0][2], [1][2], [2][2])

        7: ([0][0], [1][1], [2][2])
        8: ([2][2], [1][1], [0][0])