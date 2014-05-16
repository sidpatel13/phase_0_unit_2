# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
#sum = 0
#array = []
#array << input.to_s.each_character.split('')
#create index
#if index % 2 == 0
#x = take that index's value * 2
#join all characters and split them again
#add up all of the terms in the array array.each {|x| sum += x}
#
#

# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

  def initialize(input)
	  @input = input.to_s.split("")
	  raise ArgumentError.new("The number is not 16 digits") if @input.length != 16
  end


  def check_card
    sum = 0
    new_array = []
	  @input.each_with_index {|x,index|
      if index % 2 == 0 
        new_array << x.to_i * 2
      else
        new_array << x.to_i
      end
    }
    another_array = new_array.join("").split("")
    another_array.each {|x| sum += x.to_i}
      if sum % 10 == 0 
        true
      else
        false
      end 
  end
end

credit_card = CreditCard.new(4563960122001999)
puts credit_card.check_card


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
=begin
What parts of your strategy worked? What problems did you face?
What questions did you have while coding? What resources did you find to help you answer them?
What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
How confident are you with each of the Learning Competencies?
Which parts of the challenge did you enjoy?
Which parts of the challenge did you find tedious?
=end
