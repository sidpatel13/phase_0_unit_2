# U2.W6: Create a BoggleBoard Class


# I worked on this challenge Stella.


# 2. Pseudocode

#create a class BoggleBoard
#initialize dice_grid
#create a method create_word with a parameter *coords
#for each coordinate go in dice_grid[coordinate 1][coordinate 2]
#create a method get row
#return dice_grid[row]
#create a method get column
# for each row return the row[column]



# 3. Initial Solution
class BoggleBoard
 
  def initialize(dice_grid)
      @dice_grid = dice_grid
  end
  
  def create_word(*coords)
      coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
      @dice_grid[row].join(",").to_s
  end
  
  def get_column(column)
      @dice_grid.map {|row| row[column]}.join(",")
  end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])
puts boggle_board.get_row(0)
puts boggle_board.get_row(1)
puts boggle_board.get_row(2)
puts boggle_board.get_row(3) #take

puts boggle_board.get_column(0)
puts boggle_board.get_column(1)
puts boggle_board.get_column(2)
puts boggle_board.get_column(3)

puts boggle_board.create_word([3,2])

# 5. Reflection
=begin
What parts of your strategy worked? What problems did you face?
This was similar to a previous challenge and Stella and I decided to work through it step by step again to see if we can come to the same conclusions. We created a boggle board class based on a coordinate system.
 
What questions did you have while coding? What resources did you find to help you answer them?
 None
What concepts are you having trouble with, or did you just figure something out? If so, what?

None pertaining to this.
 
Did you learn any new skills or tricks?
 Yes, going over how to use map to create a coordinate system. It also helped me see how using the map method can be useful.
 
 
How confident are you with each of the Learning Competencies?
 Very Confident
Which parts of the challenge did you enjoy?
 All of them! Pairing and going through each step with a partner and having another set of eyes to look over your work was also awesome!
 
Which parts of the challenge did you find tedious?
 None
