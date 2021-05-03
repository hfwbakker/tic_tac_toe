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

  # def check_field

  # end
end

# playa class
class Player < TicTacToe
  def symbol(sym)
    @sym = sym
    puts @sym
  end

  def change_it
    puts 'input x coordinate'
    x = gets.chomp.to_i
    puts 'input y coordinate'
    y = gets.chomp.to_i
    if @@field[x][y] == "X" || @@field[x][y] == "Y"
      puts "field taken"
    else
      @@field[x][y] = @sym
    end
  end
end

playerX = Player.new
playerX.symbol('X')

playerO = Player.new
playerO.symbol('O')

playerX.print_field

playerX.change_it

playerX.print_field

playerO.print_field
