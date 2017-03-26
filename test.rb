require 'byebug'

WORDS = %w(programming)


  @word = WORDS.sample
  @bad_guesses_left = 10
  @word_array = @word.scan /\w/
  @user_input = gets.chomp.scan /\w/
  @matches =  @word_array & @user_input
loop do
  puts `clear`
      if @word_array.any? { |i| @user_input.include? i }
        puts @matches.inspect
        
      else
        @bad_guesses_left -= 1
        puts "Sorry, no matches. Try again."
        puts "You have #{@bad_guesses_left} guesses left"
      end
      unless @bad_guesses_left != 0
        break

      end



end



# while true
#   puts `clear`
#   puts "Please enter a letter"
#   @user_input = gets.chomp.scan /\w/
#   @matches =  @word_array & @user_input
#
#   if @word_array.any? { |i| @user_input.include? i }
#       puts @matches.inspect
#       break
#     else
#       @bad_guesses_left -= 1
#       puts "Sorry, no matches. Try again."
#       puts "You have #{@bad_guesses_left} guesses left"
#     end
# end
#
# def winner
#   if @user_input == @word_array
#     puts "winner"
#   end
# end
# winner

# def show_underscore (word_array, user_input)
#   underscore = ''
#   @word_array { |word| underscore += (user_input.include? word)? word: "_"}
#
# end
# show_underscore

# def matching_letters
#   if @word_array.any? { |i| @user_input.include? i }
#     puts @matches.inspect
#   else
#     @bad_guesses_left -= 1
#     puts "Sorry, no matches. Try again."
#     puts "You have #{@bad_guesses_left} guesses left"
#   end
# end
