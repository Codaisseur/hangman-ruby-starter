class RandomWord
  attr_reader :word

  WORDS = %w(programming monkeybusiness rubyesque styleguide)

  def initialize
    @word = WORDS.sample
  end

  def positions_for(characters: [])
    letters =  @word.scan /\w/
    byebug
  end
end
