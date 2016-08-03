require 'rspec'
require_relative 'game.rb'

describe Game do
  #let(:game) { Game.new}
  before do
    @game = Game.new
    @word = "unicorn"
  end

  it "has an initial count of 0" do
    expect(@game.guess_count).to eq 0
  end

  it "has the word.length number of guesses" do
    expect(@word.length).to eq 7
  end

  it "switches win condition to true when dashes are gone" do
    @answer = ['u', 'n', 'i', 'c', 'o', 'r', 'n']
    @game.check
    expect(@game.game_won).to eq true
  end

  it "adds each guess into the guesses array" do
    @game.add_to_guesses
    @guess_letter = 'u'
    @game.add_to_guesses
    expect(@guesses).to eq ['u']
  end
end
