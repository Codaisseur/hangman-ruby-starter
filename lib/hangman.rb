require File.expand_path("../random_word", __FILE__)

class Hangman
  def initialize
    @random_word = RandomWord.new
  end

  def play!
    puts "Hi, let's play Hangman!"

    puts "Here's the word we're looking for:"
    puts @random_word.status

    while @random_word.not_guessed? && @random_word.has_guesses_left? do
      print "Your guess: "
      @random_word.guess!

      puts @random_word.status
    end
  end
end
