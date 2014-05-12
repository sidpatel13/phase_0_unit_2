# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
#array = []
#array << input.to_s.each_character.split('')
#create index
#if index % 2 == 0
#x = take that index's value * 2
#if x > 9
#x.to_s.each_character.split('')
#
#
#

# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

def initialize(input)
    @input = input
end


def split(@input)
    split = @input.to_s.chars.to_a
    split.each_with_index do |x,index|
        if index % 2 == 0
            x * 2
        end
        puts split
    end
end
end


credit_card = CreditCard.new
puts credit_card.split(4563960122001999)

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
