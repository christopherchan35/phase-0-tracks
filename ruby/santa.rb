# 6.3 Attributes
# Release 0: Bring Santa to Life

class Santa
  def initialize(name, gender, ethnicity)
    #puts "Initializing Santa instance..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

# getter methods

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def say_name
    puts "My name is #{@name}"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)

  end
end

santas = []
=begin
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas
=end
example_names = ["Larry", "Gary", "Jerry", "Stephanie", "Cindy", "Penelope", "N/A"]
example_genders = [ "agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = [ "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end

santas.each do |name|
  puts name.say_name
end
