# COMMAND LINE TIC TAC TOE

# class fur das spiel
class TicTacToe
  # def initialize; end
  class << self
    attr_accessor :field
  end

  @@field = [['A1', 'A2', 'A3'],
            ['B1', 'B2', 'B3'],
            ['C1', 'C2', 'C3']]

  def self.print_field
    puts "
      #{@@field[0][0]} | #{@@field[0][1]} | #{@@field[0][2]}
      -- + -- + --
      #{@@field[1][0]} | #{@@field[1][1]} | #{@@field[1][2]}
      -- + -- + --
      #{@@field[2][0]} | #{@@field[2][1]} | #{@@field[2][2]}
      "
  end
end

# playa class
class Player < TicTacToe

  def symbol(sym)
    @sym = sym
    puts @sym
  end

  def switch_player
    if @sym == 'X'
      @@player_o.change_it
    else
      @@player_x.change_it
    end
  end

  def try_again_player
    if @sym == 'O'
      @@player_o.change_it
    else
      @@player_x.change_it
    end
  end

  def change_it
    puts "Player #{@sym} turn"
    puts 'input x coordinate'
    x = gets.chomp.to_i
    if x > 2 || x.negative?
      puts 'ERROR: OUT OF FIELD'
      try_again_player
    end
    puts 'input y coordinate'
    y = gets.chomp.to_i
    if y > 2 || y.negative?
      puts 'ERROR: OUT OF FIELD'
      try_again_player
    end
    if @@field[x][y] == 'X' || @@field[x][y] == 'Y'
      puts 'ERROR: FIELD TAKEN'
      if @sym == 'X'
        @@player_x.change_it
      else
        @@player_o.change_it
      end
    else
      @@field[x][y] = @sym
    end
    TicTacToe.print_field
    switch_player
  end
end

@@player_x = Player.new
@@player_x.symbol('X')

@@player_o = Player.new
@@player_o.symbol('O')

@@player_x.change_it

TicTacToe.print_field

# henri = Player.new
# TicTacToe.field
