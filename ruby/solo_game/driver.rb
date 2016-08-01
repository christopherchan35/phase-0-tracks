require_relative 'game.rb'

game = Game.new

puts "Welcome to the Word-Guessing Game!"
puts "Player 1, please enter a word: "
game.word = gets.chomp
#p game.word
puts "\e[H\e[2J"
puts "Player 2, enter a letter: "
game.guess_letter = gets.chomp
game.generate_answer(game.word)
game.guess
game.add_to_guesses
game.check

while game.guess_count < game.word.length
  puts "Enter a letter: "
  game.guess_letter = gets.chomp
  game.guess
  game.add_to_guesses
  game.check
end

if game.guess_count >= game.word.length
  if !game.game_won
    puts "Better luck next time"
  elsif game.game_won
    puts "Congrats!"
  end
end