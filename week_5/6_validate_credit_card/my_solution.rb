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
	@input = input.to_s.split("")
    puts @input
	raise ArgumentError.new("The number is not 16 digits") if @input.length != 16
end



def ccnumber
  new_array = []
  #sum = 0
	@input.each_with_index do |x,index|
      if index % 2 == 0
        x = x.to_i * 2
      	  if x > 9
      		  split = x.to_s.split("")
      		  x = split[0].to_i + split[1].to_i
      	  end
  	  end
 #      new_array << @input
 #      puts new_array
 #      sum = new_array.inject(:+)
 #      puts sum
 	new_array << x
 	end
 	sum = new_array.inject(:+)
 	#   new_array << x
 	#   new_array.each do |x|
 	#     sum += x
 	#   end
 	#  sum
 	# end
 	# sum = new_array.inject(:+)
 	#puts sum
 	#puts new_array
 	#sum += x
     #end
   end

end

#end
credit_card = CreditCard.new(4563960122001999)
puts credit_card.ccnumber


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
