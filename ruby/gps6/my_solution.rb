# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # initialize our instance variables
  # it is called whenever instiate a new VirusPredictor object
  # when we instiate a new VirusPredictor, it requires a state_of_origin, population_density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and passes population_density, population, and state as arguments
  # calls speed_of_spread and passes population_density and state as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # when called by the virus_effects instance method, it will print out a string displaying the number of deaths depending on that state's population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population *= 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population *= 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population *= 0.1).floor
    else
      number_of_deaths = (@population *= 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # when called by the virus_effects instance method, it will print out a string displaying the speed in months.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population|
  new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density],STATE_DATA[state][:population])
  new_state.virus_effects
end

#=======================================================================
# Reflection Section

# The difference is that the hash rocket is a bit oudated while the symbol method is the newer way of assigning in hashes. The hash rocket can be used to assign into both a string and a symbol, while the colon/symbol method is used for assigning into a symbol.

# Require_relative is needed to access the data in the other file. Require allows you to access data anywhere on your computer. require_relative allows you to use a path within the directory.

# Some ways to iterate through a hash are the each method and the map method.

# Virus effects was just using instance variables, therefore none of them were required to be passed into the methods.

# This challenge really helped me with refactoring and what to look for when I am refactoring. Not to change code for the sake of changing it, but to make it less DRY.