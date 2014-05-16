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

=end
# 4. Refactored Solution

class GuessingGame
    
    def initialize(answer)
        @answer = answer
    end
    
    
    def guess(guess)
      @guess= guess
    
        if @guess < @answer
            :low
        elsif @guess > @answer
            :high
        elsif @guess = @answer
            :correct
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





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I think the strategy was to create three methods within the GuessingGame class. This included initialize, guess, and solved?.
The place I ran into trouble was at first I instantiated the guess variable within the initialize method. After changing it to the guess method, the code ran smoothly.

What questions did you have while coding? What resources did you find to help you answer them?
I wanted to know whether you can create instance variables outside of the initialize method. I found out that you can.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Yes, I figured out that you can create instance variables outside of the initialize method.

Did you learn any new skills or tricks?
Yes, learned even more about instance variables.

How confident are you with each of the Learning Competencies?
Very Confident.

Which parts of the challenge did you enjoy?
Trying out different strategies to solve the problem.

Which parts of the challenge did you find tedious?
Debugging.

