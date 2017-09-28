class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = file_name.split(" - ")
    # song_artist = parts[0]
    song = Song.new(parts[1])
    # binding.pry
    song.artist = Artist.find_or_create_by_name(parts[0])
    song.artist.add_song(parts[1])
    # binding.pry
    song
    # song.name = file_name.split(" - ")[1]
    # song.name.gsub(".mp3", "")
  end

end
