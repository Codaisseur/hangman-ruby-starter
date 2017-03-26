WORDS = %w(programming)


  @word = WORDS.sample
  # @bad_guesses_left = 10
  # @word_array = @word.scan /\w/
  # @user_input = gets.chomp.scan /\w/
  # @matches =  @word_array & @user_input



def get_placeholder(sample_word, guessed_words)
  placeholder = ''
  sample_word.chars do |letter|
    placeholder += (guessed_words.include? letter)? letter : '-'
  end
  return placeholder
end

puts get_placeholder(@word, '')
