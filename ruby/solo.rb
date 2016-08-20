# class Charmander
# attributes will be name, level, and moveset which will be an array
# level up method will increase its' level by 1
# use move method will take in an argument and use that selected move
# rename will take in new name and set name to its


class Charmander
  attr_reader :name, :level
  attr_accessor :moves

  def initialize(name, level, move)
    if name == ''
      @name = "Charmander"
    else
      @name = name
    end
    @level = level
    @moves = ["Scratch", "Growl"]
    @moves << move
    # puts "#{@name} is level #{@level}"
    # puts "It knows:"
    # @moves.each { |move| puts "#{move}" }
    # puts "\n"
  end

  def level_up
    @level += 1
  end

  def use_move(selected_move)
    "#{@name} used #{@moves[@moves.index(selected_move)]}"
  end

  def rename(new_name)
    @name = new_name
  end
end


# TESTER CODE
# c = Charmander.new
# puts c.use_move("Scratch")
# # c.name = "Billy"
# puts c.name
# c.rename("Billy")
# puts c.name


# c.moves << "Flamethrower"
# puts c.moves

# DRIVER CODE
poke_box = []

puts "Would you like to make a Charmander? (Yes/No)"
continue = gets.chomp

until continue == 'No' do
  puts "What would you like to name your charmander?"
  new_name = gets.chomp
  puts "What level is it?"
  new_level = gets.chomp.to_i
  puts "What move does your charmander know?"
  new_move = gets.chomp
  puts "\n"
  charmander = Charmander.new(new_name, new_level, new_move)
  poke_box << charmander
  puts "Would you like to make a Charmander? (Yes/No)"
  continue = gets.chomp
  puts "\n"
end

poke_box.each do |charmander|
  puts "#{charmander.name} is level #{charmander.level}"
  puts "It knows:"
  charmander.moves.each { |move| puts "#{move}" }
  puts "\n"
end
# p charmander
