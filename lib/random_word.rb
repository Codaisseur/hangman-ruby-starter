class RandomWord
  attr_reader :word

  WORDS = %w(programming monkeybusiness rubyesque styleguide)

  def initialize
    @word = WORDS.sample
    @guesses = []
  end

  def status
    positions_for(characters: @guesses).join(" ")
  end

  def guess!
    @guesses << gets.chomp
  end

  def not_guessed?
    true
  end

  def has_guesses_left?
    true
  end

  def positions_for(characters: [])
    chars.map do |char|
      characters.include?(char) ? char : "_"
    end
  end

  def chars
    word.chars
  end
end
