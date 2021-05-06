class Testing
  def initialize(word)
    @word = word
  end
end

class SubTest < Testing
  def print_it
    puts "da word = #{@word}"
    if @word == "koek"
      puts "haha het is echt koek"
      @@test2.print_it
    elsif @word == "ei"
      puts "ei ei ben niet blij"
      @@test1.print_it
    end
  end
end

@@test1 = SubTest.new("koek")
@@test2 = SubTest.new("ei")

@@test1.print_it
# test2.print_it

