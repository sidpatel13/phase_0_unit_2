# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
=begin
	First write a method that gets an average of values in the array

	def get_grade(array)
		sum = 0
		avg = 0 initialize sum and avg variables
		For each term in array assign value |x|
			sum += x => you add all the terms together
			avg = sum/(array.length)
		if avg >= 90
			then "A"
		else if avg >= 80
			then "B"
		else if avg >= 70
			then "C"
		else if avg >= 60
			then "D"
		else "F"
		end
	end


=end




# What is the output? (i.e. What should the code return?)
=begin
The code should return the avg of the grades in string format.
So, say you have the following function: get_grade([45,98,79])
This should return "C"	
=end

# What are the steps needed to solve the problem?
=begin
Find the average
Set letter grades based on average
ex. avg > 90 => "A"
=end

# 2. Initial Solution
# def get_grade(array)
#   sum=0
#   array.each do |x|
#    sum += x
#   end
#    avg = sum/(array.length)
# 	if avg >= 90
#    	  return "A"
#    	elsif avg >= 80
#       return "B"
#     elsif avg >= 70
#       return "C"
#     elsif avg >= 60
#       return "D"
# 	else
#       return "F"
#     end

# end





# 3. Refactored Solution
def get_grade(array)
  sum=0
    array.each do |x|
      sum += x
    end
      avg = sum/(array.length)
		case avg
		  when 90..100
		    "A"
		  when 80..90
		    "B"
		  when 70..80
		    "C"
		  when 60..70
		    "D"
		  when 0..60
		    "F"
		  else
		    "Error"
		end


end



#puts get_grade([65,93,84,71])


# 4. Reflection 
=begin
	

	

What parts of your strategy worked? What problems did you face?

My strategy was simple. Wanted to find the sum, take the average, and assign letter grades. 
Yes, for me refactoring was a bit of a challenge. I was trying to find ways to get the sum and average on the same line.

What questions did you have while coding? What resources did you find to help you answer them?

Whether there was a way to refactor my code better. I used a case and created sum and average variables, but was trying to fit
them on the same line. I looked at ways you can use: array[i] += 1. So for example, I was thinking if you can identify all the keys
in the array and if there was some way (perhaps a built in method) to add all of the values of the keys in the array, it could all fit together.
What concepts are you having trouble with, or did you just figure something out? If so, what?

Did you learn any new skills or tricks?
	
Some topics were affirmed such as going over using "case when" and summing terms in an array.

How confident are you with each of the Learning Competencies?

I feel confident about the learning competencies especially learning to iterate arrays and write methods.

Which parts of the challenge did you enjoy?

I enjoyed the pseudocode this time around. It was also important to think about the  building blocks of the solution and how to solve it.

Which parts of the challenge did you find tedious?

=end

