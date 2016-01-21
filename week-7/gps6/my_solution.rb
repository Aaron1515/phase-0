# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #A method that takes 3 parameters and name them with instance variables.To be accessible anywehere in the class.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end #A method called virus_effects that calculates and returns the 2 methods predicted_deaths and speed_of_spread.

  private

  def predicted_deaths
    densities = [200, 150, 100, 50, 1]
    index = 0
    while index < densities.length
      if @population_density >= densities[index]
        number_of_deaths = (@population * densities/500).floor
      else
        index += 1
    end
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
#A method that predicts death and returns a string.  Accepts 3 arguments : population density, pouluation and the name of the state.  To calculate the number of deaths, if population density is over 200 it is 40% of the population. Number of deaths for polulation densisity for over 150 is 70%.  For ppopulation density over 100 is 20%.  If population density over 50 then 10% and everyone is is 5% of the population.
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
#Print out the State inputed and the number of death in this outbreak.
  end

  def speed_of_spread
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
#Created a method called speed_of_spread, that takes 2 argumments: population density, and name of state.  If the population density is over 200, its 1/2 of a month.  If population is over 150 then in 1 month time, if over 100, 1 1/2 month, if population density is over 50, then 2 months, and everything else is 2 and 1/2 months.
    puts " and will spread across the state in #{speed} months.\n\n"

  end
end



// #=======================================
# Create a way to call all states

#  STATE_DATA.each do |state, data|
#    states = VirusPredictor.new(state, data[:population_density], data[:population])
#    states.virus_effects
#  end
#


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
p alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The two was => and :.  => is used for strings or another things.  But : is used only for symbols.

# What does require_relative do? How is it different from require?

# require_relative is to call another file into the current working file.  require_relative doesn't need the full path.  It will look for the file that you designate and has to be in the same working directory.

# require needs the full directory to link the file to the current working file.

# What are some ways to iterate through a hash?

# We used .each do |state, data| to iterate through the hash in STATE_DATA

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# When refactoring I didn't realize that instance variables was being used and could be cut out of the parameters.

# What concept did you most solidify in this challenge?

# There's still much to learn and how to do things in Ruby.  It was hard doing this challenge because we started JAVASCRIPT and back again.  But our guide was able to do things another way on the density.  Using count as a more intuitive way.



