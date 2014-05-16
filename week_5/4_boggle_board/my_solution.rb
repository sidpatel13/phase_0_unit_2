# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

        #board = [["b", "r", "a", "e"],
                #["i", "o", "d", "t"],
                #["e", "c", "l", "r"],
                #["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

#def create_word(board, *coords)
#coords.map { |coord| board[coord.first][coord.last]}.join("")
#end

#puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])
#puts create_word(boggle_board, [0,1], [0,2], [1,2])

#def get_row(row)
    # your code here
#end

#get_row(1)

#def get_col(col)
    # your code here
#end

#get_col(1)



# Pseudocode

# Initial Solution
class Boggle_Board
    
    def initialize(board)
        @board = board
    end
    
    def create_word(*coords)
        coords.map { |coord| @board[coord.first][coord.last]}.join("")
    end
    
    def get_row(row)
        @board[row].join(",")
    end
    
    def get_column(column)
        @board.map {|row| row[column]}.join(",")
    end
    
 end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

board = [["b", "r", "a", "e"],
["i", "o", "d", "t"],
["e", "c", "l", "r"],
["t", "a", "k", "e"]]

board = Boggle_Board.new(board)


puts board.create_word([2,1], [1,1], [1,2], [0,3])
puts board.get_row(1)
puts board.get_column(2)




# Reflection

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection
=begin
What parts of your strategy worked? What problems did you face?
 To be honest, I didn't really pseudocode for this challenge. I just started using some of the code provided as a reference point to work on my initial solution.
 
What questions did you have while coding? What resources did you find to help you answer them?
 I wanted to see what this(coords.map { |coord| board[coord.first][coord.last]}.join("")) did. I worke in irb to see how this coordinate system was set up.
 
 What concepts are you having trouble with, or did you just figure something out? If so, what?
 I learned how to call terms in rows and columns. Found out how powerful the map method can be.
 
Did you learn any new skills or tricks?
Yes, *input can allow you input in multiple pieces of data.
 
How confident are you with each of the Learning Competencies?
Very Confident
 
Which parts of the challenge did you enjoy?
I think starting with the code provided and writing an initial solution quickly and testing it and changing it simultaneously was fun.
 
 Which parts of the challenge did you find tedious?
Pseudocode. I wanted to really play with everything so I decided to skip it. I had a basic idea in my head of what I needed.
