class Artist

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    songs << song_instance
    song_instance.artist = self
  end

  def songs
    @songs
  end

  def genres
    songs.collect do |song_instances|
      song_instances.genre
    end
  end
end
