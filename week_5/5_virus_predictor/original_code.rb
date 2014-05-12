# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#Require relative is a link to the data from state_data.rb file.

require_relative 'state_data'

class VirusPredictor
    
    
    #Here we initialize the variables, whose instances we plan on using throughout the class
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end


#Here we use the instances of the variables we initialized above to create new methods. We call these methods, predicted_deaths and speed_of_spread, here in virus_effects.

 def virus_effects  #HINT: What is the SCOPE of instance variables? Instance variables are copies of the variables declared in the initialize methods. This allows for them to be used through all the methods in the class.
    predicted_deaths(@population_density, @population, @state)
    #predicted deaths has to be called as a public method so it can access the variables we initialized.
    #the instance variables have global scope in that they can be used throughout the class.
    #the methods predicted deaths and speed of spread can only be accessed through virus_effects.
    speed_of_spread(@population_density, @state)
  end
 
 #We called predicted_deaths and speed_of_spread above. What those methods do is in private below.

private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #Private methods cannot be viewed by the user. For example, if our problem requires some complicated math
  #that the user is not very interested in seeing how it's done, then we can write those steps using private.
  #The entire code cannot be private. One of the public methods have to use the private methods since instance variables can only be initialized in a public method. So in this scenario, we use predicted_deaths and speed_of_spread in the public method to call what the method does in the private method.

 # predicted deaths uses population density and population to predict number of deaths.
 
  def predicted_deaths(population_density, population, state)
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
 
 # speed of spread uses population density to predict speed of spread.
 
  def speed_of_spread(population_density, state) #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
def each_state
    STATE_DATA.each do |key, data|
        key = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread])
        key.virus_effects
    end
end


#pseudocode
#for each key in STATE_DATA hash (this would be the states right?)
#display the values of the following keys(:population_density),(:population),(:region),(:regional_spread)
#STATE_DATA.each_key { |key| puts key}

#or

#state data each do state data
  #state_value = VirusPredictor.new state, STATE_DATA[state][:population] etc

def each_state
    STATE_DATA.each{|state, data|
        state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread])
        puts state
        puts state.virus_effects
    }
end

=begin
  
original code
  

def each_state
    STATE_DATA.each{|state, data|
        x = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread])
        puts x
        puts x.virus_effects
    }
end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects