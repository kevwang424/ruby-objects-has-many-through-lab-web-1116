class Song

  attr_accessor :artist, :genre
  attr_reader :name


  def initialize(name, genre_instance)
    @name = name
    @genre = genre_instance
    genre_instance.add_song(self)
    
  end





end
