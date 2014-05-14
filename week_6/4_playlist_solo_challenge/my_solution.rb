# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin

 class Song
    
  def initialize(song, singer)
    @song = song
    @singer = singer
  end

  def play
    puts "#{song}, #{singer}"
  end
 
 
 
 end
 
class Playlist
 
  def initialize(*input)
    @contents = input
 
  end
 
  def add (*input)
    @contents += input
     
  end
 
  def num_of_tracks
    self.length // @contents.length
  end
 
  def remove(song)
    @contents.delete(song)

  end
  
  def includes?(song)
    @playlist.include?(song)
  end
  
  def play_all
    puts @contents
  end
 
  def display
    @contents.each do |x|
        puts x
    end
  end
 
end
 
 
 
 
 
 
=end



# Initial Solution

class Song
    
    def initialize(song, singer)
        @song = song
        @singer = singer
    end
    
    def play
        puts "#{@song}, #{@singer}"
    end
    
    
    
end

class Playlist
    
    def initialize(*multiple_song)
        @contents = multiple_song
        
    end
    
    def add (*multiple_song)
        @contents += multiple_song
        
    end
    
    def num_of_tracks
        @contents.length
    end
    
    def remove(song)
        @contents.delete(song)
        
    end
    
    def includes?(song)
        @contents.include?(song)
    end
    
    def play_all
        puts @contents
    end
    
    def display
        @contents.each do |x|
            puts x
        end
    end
    
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

=begin
What parts of your strategy worked? What problems did you face?
 I think the first thing was creating the two classes I would need in the driver code: Song and Playlist. I then went ahead and created each of the methods being called on those classes. I went ahead and wrote in what each method would do. I think one challenge was adding in the multiple songs in the playlist, but I remembered from the previous challenge about using * to have multiple inputs.
 
What questions did you have while coding? What resources did you find to help you answer them?
 I used the previous challenges to guide me. At first, I was thinking of creating an empty array or hash, but I realized I should take a step back and create two separate classes and take the problem one step at a time. That really helped. As I wrote in the methods and looked at one piece of driver code at a time, I was able to figure it out.
 
What concepts are you having trouble with, or did you just figure something out? If so, what?
 I sometimes forget what variable needs to be initialized and be in the initialize method. I keep telling myself it is whatever the input being passed to that class is, so write code according to that input.
 
Did you learn any new skills or tricks?
 Yes, the driver code was great going through as it showed how you can create a song class and input it into a playlist class.

 How confident are you with each of the Learning Competencies?
 Confident.
 
Which parts of the challenge did you enjoy?
 Going through the driver code and understanding it.
 
Which parts of the challenge did you find tedious?
Debugging some small errors intitially.
