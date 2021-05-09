# COMMAND LINE TIC TAC TOE

ASSIGNMENT & RESOURCES
https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/tic-tac-toe
* Build a tic-tac-toe game on the command line where two human players can play against each other and the board is 
displayed in between turns.
* Think about how you would set up the different elements within the game… What should be a class? Instance variable? 
Method? A few minutes of thought can save you from wasting an hour of coding.
* Build your game, taking care to not share information between classes any more than you have to.


NEXT UP:
- "Warning: class variable access from toplevel" -> relating to @@. Not sure yet how to fix that.
- When i use @ instead of @@ for the above stuff work but the value in case returns blank. Is attribute accessor the key? Do I need to set it to read and write or something?
- Overall fine tuning, output right now is a bit much and makes it a bit overwhelming. Can gets.chomp take two values? E.g. input x and y coordinates as [x, y] or something. Need to use an array perhaps?
- How to check for win conditions? Refer to a hash?
- Change if statements to case-whens


LOG:
--- Sunday May 9th ---
Day five of working on Tic Taco Toe.
- Coordinate input is being validated. Coordinates above 2 or below 0 get an error message and a redo.
- Main game functionality works. However still no win conditions.
- Tried to figure out the "class variable access from top level" complaint as well as the "Replace class var @@field with a class instance var." rubocop complaint. Maybe should just ignore it.


--- Thursday May 6th ---
Day four of working on Tic Tac Toe, est 1.5 hours.
- Loop now works, after calling "change_it", the other player gets called with the "switch_player" function.
- Can call instance method from within another method by using @@variables, but it causes warning messages.
- Cleaned up some excess code.
- Turned print_field into a class method so it can be printed with "TicTacToe.print_field" instead of from an instance like "player_x.print_it".
- Created test.rb in order to test some code ideas for this specific project.

--- Monday May 3rd ---
Day three of working on Tic Tac Toe.
- Deleted the former "field" class, and integrated some of its functionality in to TicTacToe class.
- Player class can now input an X or O respectively in a field.
- Input is validated, so if ther is alreand an X or O player will get an error message.

--- Thursday April 29th ---
Day two of working on Tic Tac Toe. 
- Created a class for "the game" called TicTacToe that keeps track of the play field through an array of arrays called @@field
- Player classes inherit from TicTacToe class and can make adjustments to @@field
- Might have to adjust the play field class, maybe integrate it to class TicTacToe
- At the moment, TicTacToe.change_value allows players to select a field by giving integer values (0, 1, 2) for x, y values matching @@field coordinates

--- Tuesday April 27th ---
Day one of Tic Tac Toe.
- Playing around, figuring stuff out
- Created a class for the play field, each square being an instance that takes orders
- Each square has three statuses: empty, X, or O
- Win conditions for reference:
        1: ([0][0], [0][1], [0][2])
        2: ([1][0], [1][1], [1][2])
        3: ([2][0], [2][1], [2][2])

        4: ([0][0], [1][0], [2][0])
        5: ([0][1], [1][1], [2][1])
        6: ([0][2], [1][2], [2][2])

        7: ([0][0], [1][1], [2][2])
        8: ([2][2], [1][1], [0][0])