# An Album class that stores an array of songs
class Album
  include Enumerable

  # An Array object of songs. Each song is a String
  attr_reader :songs

  # Creates a new Album instance with an empty songs array
  def initialize
    @songs = []
  end

  # Add a song to the album object's songs array
  def add_song(song)
    songs << song
  end

  # Yield each song in the album to a block
  def each
    songs.each { |song| yield(song) }
  end
end

thriller = Album.new

thriller.add_song("Thriller")
thriller.add_song("Billie Jean")

thriller.songs #=> ["Thriller", "Billie Jean"]
