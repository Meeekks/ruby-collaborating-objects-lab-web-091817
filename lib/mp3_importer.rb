require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    dir = Dir.entries(path)
    dir.map do |file|
      if file.end_with?(".mp3")
        file
      end
      # binding.pry
    end.compact
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
      # binding.pry
    end
  end

end
