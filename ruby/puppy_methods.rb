class Puppy

  # called each time .new is used
  def initialize
    puts "Initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def plays_dead
    puts "*plays dead*"
  end

end

doggy = Puppy.new
doggy.fetch("ball")
doggy.speak(3)
doggy.roll_over
p doggy.dog_years(10)
doggy.plays_dead