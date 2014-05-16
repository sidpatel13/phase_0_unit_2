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
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("You can't make that food") if @sides < 1
  end
  
  def sides
    @sides
  end
  
  def roll
    1+rand(@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
puts die.roll





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I think this was pretty simple strategy. I wanted to create a Die class that when rolled returned a random number from the sides. 
Once, I did some research to learn about how to randomize a range of numbers, it was simple.

What questions did you have while coding? What resources did you find to help you answer them?
Where to put the argument error. When I came back to this the code was not running properly. It was because the Argument error was outside of the
initialize class.

What concepts are you having trouble with, or did you just figure something out? If so, what?
None

Did you learn any new skills or tricks?
Yes, randomizing numbers and creating a basic die class.

How confident are you with each of the Learning Competencies?
Very

Which parts of the challenge did you enjoy?
Researching and coding. Testing possibilities in irb.

Which parts of the challenge did you find tedious?
Debugging but not very.
