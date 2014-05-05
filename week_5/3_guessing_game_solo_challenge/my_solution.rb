# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
# Input:
 class GuessingGame
    def initialize(answer, guess)
        @answer = answer
        @guess = guess

    end
 
    def guess
        if @guess < @answer
        ":low"
        elsif @guess > @answer
        ":high"
        elsif @guess = @answer
        ":correct"
        end
    end
    
    def solved?
        if @guess = @answer
            true
        else
            false
    end
 end
 
 
# Output:
 game = GuessingGame.new(10)
 
 game.solved?   # => false
 
 game.guess(5)  # => :low
 game.guess(20) # => :high
 game.solved?   # => false
 
 game.guess(10) # => :correct
 game.solved?   # => true
# Steps:
 
 initialize answer and guess 
 create guess method 
 if guess > answer
    "high"
 ..... etc
 create solved? method


=end
# 3. Initial Solution



class GuessingGame
    def initialize(answer)
        @answer = answer
        @guess = nil
        
    end
    
    def guess(input)
        @guess = input
        if @guess < @answer
            ":low"
            elsif @guess > @answer
            ":high"
            elsif @guess = @answer
            ":correct"
        end
    end
    
    def solved?
        if @guess == @answer
            true
        else
            false
        end
    end
end

game = GuessingGame.new(10)

p game.solved?

p game.guess(5)
p game.guess(20)
p game.solved?

p game.guess(10)
p game.solved?   

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
