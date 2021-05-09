class Testing
  def initialize(word)
    @word = word
  end

  @@field = 'darp'

  def print_word
    puts "#{@word}"
  end

  def print_field
    puts "#{@@field}"
  end

  def edit_field
    @@field = "prol"
  end

end

class SubTest < Testing

end

test_field = [[1, 2, 3],
              [4, 5, 6],
              [8, 9, 10]]

henri = Testing.new(test_field)

henri.print_field

deja = SubTest.new("Boem")

deja.print_field