class Genre

  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end


end
