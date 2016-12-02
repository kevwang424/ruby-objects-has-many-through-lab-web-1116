class Genre


  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    songs << song_instance
  end


  def artists
    songs.collect do |song_instance|
      song_instance.artist
    end
  end

end
