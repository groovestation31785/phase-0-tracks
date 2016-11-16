# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# 
#

require_relative 'state_data'

class VirusPredictor


  # This is ran every time a new instance of the class in created
  # There are three arguments when created: state, PD, population
  # Those three attributes are set as instance variables to the arguments

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Calls predicted_deaths and speed_of_spread methods with the necessary arguments
  # After refactoring, we don't need the arguments in order for the the methods to pass

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private # Methods under the private keyword cannot be directly called 
          # by the user. For example, alabama.speed_of_spread would create
          # an error. Because the two private methods are called within the 
          # public 'virus effects', the user can use the methods indirectly.

  # The arguments are PD, population, and state (the instance variables)
  # After refactoring, we don't need the arguments in order for the the methods to pass
  # Conditional statements that determine the number of deaths
  # The population is multiplied by specific number depending on population then rounded down
  # Prints a statement explaining the losses

  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density

    number_of_deaths = 0
    nums_check = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
    nums_check.each do |key, value| 
      if @population_density >= key
        number_of_deaths = (@population * value).floor
        break
      else
        number_of_deaths = (@population * 0.05).floor
      end
    end


=begin
     if @population_density >= 200
       number_of_deaths = (@population * 0.4).floor
     elsif @population_density >= 150
       number_of_deaths = (@population * 0.3).floor
     elsif @population_density >= 100
       number_of_deaths = (@population * 0.2).floor
     elsif @population_density >= 50
       number_of_deaths = (@population * 0.1).floor
     else
       number_of_deaths = (@population * 0.05).floor
     end
=end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # The arguments are the instance variables PD and state
  # After refactoring, we don't need the arguments in order for the the methods to pass
  # Declare a variable 'speed' starting at 0.0
  # Conditional statement increases the speed depending on the PD
  # Printd a statement explaining the speed in months

  def speed_of_spread #(population_density, state) in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   
    nums_check = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}
    speed = 0.0
    nums_check.each do |key, value|
      if @population_density >= key
        speed += value
        break
       elsif @population_density < 50
         speed += 2.5
         break
      end
    end


=begin
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
=end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |key, value| 
  state_name = key
  state_name = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  state_name.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

idaho = VirusPredictor.new("Idaho", STATE_DATA["Idaho"][:population_density], STATE_DATA["Idaho"][:population])
idaho.virus_effects
=end

#=======================================================================
# Reflection Section

# constants
# symbols (why/how)