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
puts doggy.dog_years(10)
doggy.plays_dead
puts "\n"

class Kitten

  def initialize
    puts "Initializing kitten instance"
  end

  def hiss(cat_name, human_name)
    puts "#{cat_name} hissed at #{human_name}"
  end

  def puke
    puts "*pukes on rug*"
  end

end

cat_array = []

50.times do
  cat_array << Kitten.new
end

names = ["Bob", "Sally", "Nancy", "Steve", "John"]
cat_names = ["Felix", "Garfield", "Tom", "Kerouac"]

cat_array.each do |kitten|
  kitten.hiss(cat_names[rand(4)], names[rand(5)])
  kitten.puke
  puts "\n"
end