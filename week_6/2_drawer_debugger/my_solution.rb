
# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? removing the item from the list
     @contents.delete(item)
  end


  def dump  # what should this method return? statement your drawer is empty
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
attr_reader :type

# Are there any more methods needed in this class? yes a clean_silverware method

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end


  def clean_silverware
    
  end

end

def assert
  raise "Assertion failed!" unless yield
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? Nothing since we dumped all of the items

fork= Silverware.new('fork')
silverware_drawer.add_item(fork)
silverware_drawer.view_contents

remove_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
remove_fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE


#def assert
#raise "Assertion failed!" unless yield
#end

#assert {silverware_drawer.dump == "Your drawer is empty"}
#assert {remove_fork.eat == "eating with the fork"}


# 5. Reflection
=begin
What parts of your strategy worked? What problems did you face?
 I kept running the file and checking what the error messages were and what lines they were on to figure out how to debug. The one error message I received was for fork.eat, for which I took a step back and went through all the driver code to see where I was messing up. I realized that fork had been removed from our list and needed to be added back to the silverware class. Once it is added to the silverware class, we can input into the the Drawer class, which is what some of the code before was doing.

What questions did you have while coding? What resources did you find to help you answer them?
 I didn't really use any resources for this challenge. I understood the driver code pretty well.

 What concepts are you having trouble with, or did you just figure something out? If so, what?
 My assert statement for this challenge didn't work. I have commented out my process above and will seek some more help to diagnose the problem.

 Did you learn any new skills or tricks?
 Yes, I saw how you can input one class into another. Learning about what happens with statements such as:silverware_drawer.add_item(Silverware.new("spoon"))

 
How confident are you with each of the Learning Competencies?
 Confident.
Which parts of the challenge did you enjoy?
 Although, this was also tedious, it was fun going through each single line of the driver code to see what was actually being outputted out. Answering the comments in this file was fun.
Which parts of the challenge did you find tedious?
Again, starting from the top and putting put statements to see output at each stage was a little tedious.