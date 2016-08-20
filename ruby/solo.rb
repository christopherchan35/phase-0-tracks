# class Charmander
# attributes will be name, level, and moveset which will be an array
# level up method will increase its' level by 1
# use move method will take in an argument and use that selected move
# rename will take in new name and set name to its


class Charmander

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
    "#{@name} used #{@moves}"
  end

  def rename(new_name)
    @name = new_name
  end
end

c = Charmander.new
p c.use_move("Scratch")