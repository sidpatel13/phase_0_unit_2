# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
# Input:

 Create a sides instance variable that can be used throughout our class in all the methods.

 
 # Output:
 
 d = Die.new(6)
 d.sides => 6
 d.roll=>#random number between 1 to 6
 
# Steps:
=end

# 3. Initial Solution

class Die
  raise ArgumentError.new("You can't make that food") if @sides < 1
  def initialize(sides)
    @sides = sides
  end
  
  def sides
    puts @sides
  end
  
  def roll
    1+rand(@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 