# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


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