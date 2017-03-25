require File.expand_path("../random_word", __FILE__)
require File.expand_path("../game_logic", __FILE__)

class Hangman
  def initialize
    @random_word = RandomWord.new
    @bad_guesses_left = 10


  end

  def play!
    puts

  end
  def greeting
    puts "Hello, Welcome to hangman."
    sleep(2)
    puts
    puts "Please guess the word or our friend will HANG!!!"
    sleep(3)
    puts
    puts "Each wrong guess takes our friend one step closer to his doom."
    sleep(3)
    puts
  end
  greeting

  while true
    puts `clear`
    puts "You have 10 wrong guesses left before he hangs!"
    sleep(4)
    puts "Enter letters"
    sleep(4)
    player_input = gets.chomp.downcase
  end


end
