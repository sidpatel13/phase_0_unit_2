# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
=begin
class Die
    def init(labels)
        @labels=labels
    end
    
    def sides
    puts sides
    
    def rolls
        pick randomly out of array
 
# Output:

When d.sides returns the # of sides still
d.roll returns one of the terms in the array
 # Steps:

=end
# 3. Initial Solution
=begin
class Die
    def initialize(sides)
        @sides = sides
    end
    
    def initialize(labels)
        @labels = labels
    end

    def sides
      @sides
    end

    def roll
        roll= @labels.sample
        roll
        #@labels.each do |i|
            #string = i.to_s
            #roll = 1 + rand(string)
            #puts roll
    end
end
=end


# 4. Refactored Solution


class Die
    def initialize(labels)
        @labels = labels
        raise ArgumentError.new("Empty set") if @labels.empty? == true
    end
    
    def sides
        sides = @labels.length
    end
    
    def roll
        roll= @labels.sample
        roll
    end
end





# 1. DRIVER TESTS GO BELOW THIS LINE



new_die = Die.new(['A','B','C'])
new_die.roll
new_die.sides


# 5. Reflection 
=begin

What parts of your strategy worked? What problems did you face?

I think the strategy was similar to the previous exercise. I wanted to use the same Die class but instead of sides, I would have
labels. The sides would be based on the # of labels.


What questions did you have while coding? What resources did you find to help you answer them?
I looked up different methods to randomly pick one of the labels. @labels.sampe was a great one that really cut down a lot of code.

What concepts are you having trouble with, or did you just figure something out? If so, what?
None pertaining to this lesson. 

Did you learn any new skills or tricks?
Yes randomly picking a term out of an array.


How confident are you with each of the Learning Competencies?
Very Confident

Which parts of the challenge did you enjoy?
I really enjoyed working on my initial solution. I made the problem a little more complex than I needed to, but it was still fun. 
I really refactored out all of the excess code.

Which parts of the challenge did you find tedious?
I think refactoring and researching was a bit tedious as it took longer.
