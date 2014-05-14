# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# assert is defined here as a method that returns the error message "Assertion failed!" 
# unless the statement evaluates to true.
# So on line 12, we call name == 'bettysue'
# when we call assert on line 13 there is no error message because that statement is evaluated to true
# However, we get an error message on line 14 because name in not equal to billybob.



# 3. Copy your selected challenge here


def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #value is how many people can consume it
  food_qty = []
 
  raise ArgumentError.new("You can't make that food") if my_list.has_key?(fav_food) == false

    fav_food_qty= my_list[fav_food]
    
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."

    else my_list.each {|k,v|
      if my_list[fav_food] >= my_list[k]
        food_qty << num_of_people/my_list[k]
        num_of_people = num_of_people % my_list[k]
      else
        food_qty << 0
      end }
  return "You need to make #{food_qty[0]} pie(s), #{food_qty[1]} cake(s), and #{food_qty[2]} cookie(s)."
  end
end

# 4. Convert your driver test code from that challenge into Assert Statements


assert{bakery_num(24, "cake") == "You need to make 4 cake(s)."}
assert{bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."}
assert{bakery_num(24, "cookie") == "You need to make 24 cookie(s)."}


# 5. Reflection
=begin

What parts of your strategy worked? What problems did you face?
 This challenge was pretty simple. After spending some time researching how to put assertions into ruby code, I was pretty confident in my strategy.
 
What questions did you have while coding? What resources did you find to help you answer them?
 
 
 Here is a stackoverflow post that helped. I also went over the ruby docs for assert and looked at using assert_block do
 http://stackoverflow.com/questions/3264168/how-to-put-assertions-in-ruby-code

 
 What concepts are you having trouble with, or did you just figure something out? If so, what?
 None pertaining to this exercise. 
 
Did you learn any new skills or tricks?
Yes, I learned how to use assert statements to test my code. Now when I run the file in my command line, I should not get an error message stating one of the assertions failed.
 
How confident are you with each of the Learning Competencies?
 Very Confident.
Which parts of the challenge did you enjoy?
 Reading about different assert statements in ruby doc was fun as I saw some other cool things you can do with it.
 
 
Which parts of the challenge did you find tedious?
 None
