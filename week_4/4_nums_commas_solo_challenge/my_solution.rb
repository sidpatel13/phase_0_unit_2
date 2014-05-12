# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin
def seperate_comma(num)
	array = take num convert it to string. take each character put it in an array and reverse it
    i = 0
    array each do i
    if i is divisible by 3 and greater than 0
    add comma after array[i] => so in this case after every 3 terms in the array we'll have a comma
    then create new_num = array.reverse.join('')
    new_num
 
 
end
	

	
=end

# 2. Initial Solution
def separate_comma(num)
	array=num.to_s.chars.to_a.reverse
	array.each_with
    == 0 && index > 0
			array[index] += ',' 
		end
	end

	new_array=array.reverse.join('')
	new_array
end

separate_comma(100000)
separate_comma(100)





# 3. Refactored Solution



# 4. Reflection 