class Song

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  attr_accessor :name, :genre, :artist




end
