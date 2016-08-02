# Virus Predictor

# I worked on this challenge [by myself, with: Tere ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

# require_relative 'state_data'
# Require_relative is needed to access the data in the other file. Require allows you to access data anywhere on your computer. require_relative allows you to use a path within the directory.

class VirusPredictor

  # Creating new instances of VirusPredictor and setting it's @state,
  # @population, and @population_density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @speed = 0.0
  end

  # calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  # Prints out how many people a state with lose, depending on @population_density
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population *= 0.4).floor
    elsif @population_density >= 150
       (@population *= 0.3).floor
    elsif @population_density >= 100
      (@population *= 0.2).floor
    elsif @population_density >= 50
       (@population *= 0.1).floor
    else
      (@population *= 0.05).floor
    end

    print "#{@state} will lose #{@population.to_i} people in this outbreak"

  end

  # Prints out how quickly a virus will spread in a certain state, based on
  # @population_density
  def speed_of_spread() #in months()
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

    puts " and will spread across the state in #{@speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, value|
  state2 = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state2.virus_effects
end


#=======================================================================
# Reflection Section

# The difference is that the hash rocket is a bit oudated while the symbol method is the newer way of assigning in hashes. The hash rocket can be used to assign into both a string and a symbol, while the colon/symbol method is used for assigning into a symbol.

# Require_relative is needed to access the data in the other file. Require allows you to access data anywhere on your computer. require_relative allows you to use a path within the directory.

# Some ways to iterate through a hash are the each method and the map method.

# Virus effects was just using instance variables, therefore none of them were required to be passed into the methods.

# This challenge really helped me with refactoring and what to look for when I am refactoring. Not to change code for the sake of changing it, but to make it less DRY.