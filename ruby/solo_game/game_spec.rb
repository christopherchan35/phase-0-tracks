require 'rspec'
require_relative 'game.rb'

describe Game do
  let(:game) { Game.new}

  it "has an initial count of 0" do
    expect(game.guess_count).to eq 0
  end

end
