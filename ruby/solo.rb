# class Charmander
# attributes will be name, level, and moveset which will be an array
# level up method will increase its' level by 1
# use move method will take in an argument and use that selected move
# rename will take in new name and set name to its


class Charmander
  attr_reader :name
  attr_accessor :moves

  def initialize
    @name = "Charmander"
    @level = 5
    @moves = ["Scratch", "Growl"]
    puts "#{@name} is level #{@level}"
    puts "It knows:"
    @moves.each { |move| puts "#{move}" }
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
c = Charmander.new
# puts c.use_move("Scratch")
# # c.name = "Billy"
# puts c.name
# c.rename("Billy")
# puts c.name


# c.moves << "Flamethrower"
# puts c.moves

# DRIVER CODE
