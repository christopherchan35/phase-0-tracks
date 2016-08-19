# Module 6.3: Attributes
class Santa
  attr_reader  :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(bad_reindeer))
    @reindeer_ranking.push(bad_reindeer)
  end
end

# TESTER CODE

# nick = Santa.new("Male", "White")
# p nick
# nick.speak
# nick.eat_milk_and_cookies("chocolate chip")
# nick.celebrate_birthday
# nick.get_mad_at("Rudolph")
# nick.gender = "test"
# p nick

# santas = []

 # example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
 # example_ethnicities = ["black", "Latino", "white", "Japanese_African", "prefer not to say", "Mystical Creatue (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas


# DRIVER CODE
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese_African", "prefer not to say", "Mystical Creatue (unicorn)", "N/A"]

100.times do |santa|
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.age = rand(0..140)
  puts "This santa is #{santa.gender}."
  puts "That is of #{santa.ethnicity} ethnicity."
  puts "They are #{santa.age} years old"
  puts "\n"
end

