# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 
=begin
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #value is how many people can consume it
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
 
  raise ArgumentError.new("You can't make that food") if my_list.has_key?(fav_food) == false

    fav_food_qty= my_list[fav_food]
    
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
    
    else num_of_people % fav_food_qty != 0
  
      while num_of_people > 0
        if num_of_people / my_list["pie"] > 0
          pie_qty = num_of_people / my_list["pie"]
          num_of_people = num_of_people % my_list["pie"]
        elsif num_of_people / my_list["cake"] > 0
          cake_qty = num_of_people / my_list["cake"]
          num_of_people = num_of_people % my_list["cake"]
        else
          cookie_qty = num_of_people
          num_of_people = 0
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
#end
pseudocode
my_list.each{ |k,v| 
  for each my_list[fav food] >= my_list[k]

  new_array << num_of_people/my_list[k]
  num_of_people = num_of_people/my_list[k]

=end






# Our Refactored Solution


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








#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection
=begin

What parts of your strategy worked? What problems did you face?
What questions did you have while coding? What resources did you find to help you answer them?
What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
How confident are you with each of the Learning Competencies?
Which parts of the challenge did you enjoy?
Which parts of the challenge did you find tedious?



