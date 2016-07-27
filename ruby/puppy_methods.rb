class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times { p "woof" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    num * 7
  end

  def plays_dead
    puts "*lays on back*"
  end

end


# pup = Puppy.new
# pup.fetch("ball")
# pup.speak(3)
# pup.roll_over
# p pup.dog_years(5)
# pup.plays_dead


class Cat

  def initialize
    #puts "Made a cat!"
  end

  def killed_mouse(num_mice)
    num_mice.times { |num| p "Killed mouse number #{num+1}" }
  end

  def eat
    puts "*ate some food*"
  end

  def sunbathed(num_hours)
    p "Sunbathed for like, #{num_hours} hours... useless..."
  end

end

cats = []
50.times { cats << Cat.new }

cats.each do |cat|
  cat.eat
  cat.sunbathed(10)
end

#p cats[0].object_id

# felix = Cat.new
# felix.killed_mouse(3)
# felix.eat
# felix.sunbathed(5)