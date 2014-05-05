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

class Die
    def initialize(sides)
        @sides = sides
    end
    
    def initialize(labels)
        @labels = labels
    end

    def sides
      puts @sides
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


new_die = Die.new(['A','B','C'])
new_die.roll
new_die.sides



# 4. Refactored Solution


class Die
    def initialize(labels, sides)
        @labels = labels
        @sides= sides
        raise ArgumentError.new("Empty set") if @labels.empty? == true
    end
    
    def sides
        puts @sides
    end
    
    def roll
        roll= @labels.sample
        roll
    end
end



new_die.roll
new_die.sides

# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
