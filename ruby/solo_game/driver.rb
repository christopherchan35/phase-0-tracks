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

while game.guess_count != game.word.length
  puts "Enter a letter: "
  game.guess_letter = gets.chomp
  game.guess
  game.add_to_guesses
end

if game.guess_count == game.word.length
  if !@game_won
    puts "Better luck next time"
  else
    puts "Congrats!"
  end
end