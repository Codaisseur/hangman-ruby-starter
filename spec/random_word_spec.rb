require 'spec_helper'

RSpec.describe RandomWord do
  let(:random_word) { RandomWord.new }

  it "generates a random word from the WORDS list" do
    expect(RandomWord::WORDS).to include(random_word.word)
  end

  describe "#chars" do
    before do
      allow(random_word).to receive(:word).and_return("codaisseur")
    end

    it "returns the characters of the word in an array" do
      expect(random_word.chars).to eq(%w(c o d a i s s e u r))
    end
  end

  describe "#positions_for(characters: [])" do
    before do
      allow(random_word).to receive(:word).and_return("homebrew")
    end

    it "returns the character positions for all passed in characters" do
      expect(random_word.positions_for(characters: ["e"])).to eq(["_", "_", "_", "e", "_", "_", "e", "_"])
    end

    it "takes an array of guesses and returns positions for all chars" do
      expect(random_word.positions_for(characters: ["e", "o"])).to eq(["_", "o", "_", "e", "_", "_", "e", "_"])
    end

    it "takes an array of guesses and does not return chars for wrong guesses" do
      expect(random_word.positions_for(characters: ["x"])).to eq(["_", "_", "_", "_", "_", "_", "_", "_"])
    end

    it "takes an array of guesses and returns positions for all correct chars" do
      expect(random_word.positions_for(characters: ["e", "x"])).to eq(["_", "_", "_", "e", "_", "_", "e", "_"])
    end
  end
end
