# U2.W4: Cipher Challenge


# I worked on this challenge with Adam Hardy.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",  #Pros: Storing data, matching values, Easy to read
            "h" => "d", #Cons: Take up a lot of place
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
            
  input.each do |x| #Taking each value in the input and assigning it a variable x
    found_match = false  # There is no match yet, so currently it's false.
    cipher.each_key do |y| #For every single key in the array, assign it a value y
      if x == y  # x is the original input value that we assigned on line 45. Whereas, y is the key in the hash.
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  #Breaking the loop so it isn't doing it over and over again.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # If the symbol isn't an alphabet, input blank space in the hash
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # It takes 0 to 9 and puts it as values in an array
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  #If the value isn't found then enter the same exact term into the hash.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #It is matching the numbers in our input
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # Whatever the input was decoded to its proper formula      
end

# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = [] 
  alphabet = ('a'..'z').to_a 
  symbols = ['@', '#', '$', '%', '^', '&', '*'] 
  cipher = alphabet.rotate(-4)  
 
  input.each do |x| 
    if alphabet.include?(x)  
      decoded_sentence << cipher[alphabet.index(x)]  
    elsif symbols.include?(x) 
      decoded_sentence << (" ") 
    else
      decoded_sentence << x 
    end
  end
 
  decoded_sentence = decoded_sentence.join("") 
 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  decoded_sentence  
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection