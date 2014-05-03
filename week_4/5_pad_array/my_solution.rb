# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
=begin
	
	

# What is the input?
class Array
def pad!(min_size, word)
		if self.length > min_size
			self
		elsif self.length < min_size
			(min_size - self.length) times do
			self << word
			self
		end

def pad(min_size, word)
	self.clone.pad!(min_size,word)
end





# What is the output? (i.e. What should the code return?)
If the length of the array is greater than minimum size, our method should return the original array.
If the minimum size is greater than the array, then we are returned a new array the size of the min_size
with the word included we specified in our method.

# What are the steps needed to solve the problem?
create array class
create pad! method
clone pad! method info in pad


=end

# 2. Initial Solution
class Array
    def pad!(min_size, word)
        if self.length > min_size
            self
        elsif self.length < min_size
            (min_size - self.length) times {self << word}
            self
        end

    def pad(min_size, word)
        self.clone.pad!(min_size,word)
    end
end



# 3. Refactored Solution



# 4. Reflection 