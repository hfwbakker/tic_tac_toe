# COMMAND LINE TIC TAC TOE

# class fur das spiel
class TicTacToe
  def initialize; end

  @@field = [['A1', 'A2', 'A3'],
            ['B1', 'B2', 'B3'],
            ['C1', 'C2', 'C3']]

  def change_value
    puts 'Give x coordinate'
    @x = gets.chomp.to_i
    puts 'give y coordinate'
    @y = gets.chomp.to_i
    print @@field[@x][@y]
  end

  def print_field
    puts "
      #{@@field[0][0]} | #{@@field[0][1]} | #{@@field[0][2]}
      -- + -- + --
      #{@@field[1][0]} | #{@@field[1][1]} | #{@@field[1][2]}
      -- + -- + --
      #{@@field[2][0]} | #{@@field[2][1]} | #{@@field[2][2]}
      "
  end
end

# class for tic tac toe squares
class Square
  def initialize(coordinate)
    @coordinate = coordinate
  end

  @empty = true
  @is_x = false
  @is_o = false

  def take_choice(choice)
    if empty == false
      puts 'Invalid choice, square is already taken.'
    end

    if choice == 'X'
      @is_x = true
      @empty = false
    elsif choice == 'O'
      @is_o = true
      @empty = false
    end
  end
end

#playa class
class Player < TicTacToe
  def change_it
    @@field[0][1] = 'BANAAN'
  end
  
  # def did_i_win
  #   check win conditions
  #   if win, then win :)

end

player1 = Player.new

player1.print_field

player1.change_it

player1.print_field
