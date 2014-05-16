# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
=begin

method(array)

new_array = {}


for each i in array
if new_array[i] is included in the array
	add 1 to new_array[i]
else set new_array[i]=1

new_array.sort(smallest to largest)
new_array.last

	
=end


# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def mode(array)
	new_array = Hash.new(0)
	array.each do |i|
		if new_array.include?(i)
			then new_array[i] += 1
		else new_array[i] = 1
		end
	end
	new_array = new_array.sort_by {|k,v| v}.last
	new_array[0]
end

mode([1,2,2,2,2,3,3,3])

# 3. Refactored Solution

	

# 4. Reflection 
=begin

What parts of your strategy worked? What problems did you face?

Creating a new hash that stores the values for the count worked well. I had some trouble debugging and getting the
new hash to be sorted by value not key.


What questions did you have while coding? What resources did you find to help you answer them?

I think the biggest question I had was in debugging. I could not get my sort function to work because my hash included both keys and values.
I finally found sort_by and used it to get the value I needed.

Did you learn any new skills or tricks?
I learned about debugger. I'm still not sure how to use it completely. I plan on spending more time in tutoring going through it.
	
How confident are you with each of the Learning Competencies?
I feel pretty confident with sorting arrays, pushing values into a new hash, and iterating through an array.

Which parts of the challenge did you enjoy?

I think doing research for the problem and playing around with code to see how to better solve this problem was fun.

Which parts of the challenge did you find tedious?
Debugging the code was tedious. I had little problems that prevented my code from running properly.
