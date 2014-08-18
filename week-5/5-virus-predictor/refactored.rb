# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# Require relative lets you call files from the directory you are in
# so if you have additional files in the same folder you can just say 'state_data' as we do below
# or if you have files in subfolders from the current one you can require relative 'data/state_data'
# so the file knows the starting folder is the one we are currently in

require_relative 'state_data'

class VirusPredictor

# The initialize is just putting default values given by the hash into instance variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# Instance variables are bound to a specific instance of the class. This method calls methods that 
# that are later defined using the instance variables that were defined in the initialize
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    status(@population_density, @population, @state)
  end

  private  
  # sets all methods that follow not accesable to outside object
  # so if we tried to call "alabama" an object of class viruspredictor and just wanted to  run alabama.predicted_deaths
  # we would return an error. When we cut and paste it above the virus_effects method we get an error when we call
  # virus_effects in the driver tests because it is set to private


    #predicted_deaths estimates the total number of deaths based on population density
  def status(population_density, population, state)
    # predicted deaths is solely based on population density
    @population_density >= 200 ? (estimate = 0.4) && speed = 0.5: 
    @population_density >= 150 ? (estimate = 0.3) && speed = 1 : 
    @population_density >= 100 ? (estimate = 0.2) && speed = 1.5:
    @population_density >= 50  ? (estimate = 0.1) && speed = 2 :  (estimate = 0.05) && speed = 2.5
        number_of_deaths = 0
        number_of_deaths = (@population * estimate).floor


   print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects