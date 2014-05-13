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