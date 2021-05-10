require 'pry-byebug'

$VERBOSE = nil

@@veld = [["1", "2", "3"],
          ["4", "5", "6"],
          ["7", "8", "9"]]

@sym = "X"

def check_for_win
  # if @@veld[0][0] && @@veld[0][1] && @@veld[0][2] == @sym ||
  #    @@veld[1][0] && @@veld[1][1] && @@veld[1][2] == @sym ||
  #    @@veld[2][0] && @@veld[2][1] && @@veld[2][2] == @sym ||

  #    @@veld[0][0] && @@veld[1][0] && @@veld[2][0] == @sym ||
  #    @@veld[0][1] && @@veld[1][1] && @@veld[2][1] == @sym ||
  #    @@veld[0][2] && @@veld[1][2] && @@veld[2][2] == @sym ||

  #    @@veld[0][0] && @@veld[1][1] && @@veld[2][2] == @sym ||
  #    @@veld[2][2] && @@veld[1][1] && @@veld[0][0] == @sym
  if @@veld[0][0] == @@veld[0][1] && @@veld[0][0] == @@veld[0][2] ||
     @@veld[1][0] == @@veld[1][1] && @@veld[1][0] == @@veld[1][2] ||
     @@veld[2][0] == @@veld[2][1] && @@veld[2][0] == @@veld[2][2] ||

     @@veld[0][0] == @@veld[1][0] && @@veld[0][0] == @@veld[2][0] ||
     @@veld[0][1] == @@veld[1][1] && @@veld[0][1] == @@veld[2][1] ||
     @@veld[0][2] == @@veld[1][2] && @@veld[0][2] == @@veld[2][2] ||

     @@veld[0][0] == @@veld[1][1] && @@veld[0][0] == @@veld[2][2] ||
     @@veld[2][2] == @@veld[1][1] && @@veld[2][2] == @@veld[0][0]
    puts "WINNER"
  else
    puts 'NOPE'
  end
end

check_for_win
