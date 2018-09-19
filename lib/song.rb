class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << @genre 
    @@artists << @artist 
  end
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.each_with_object([]) do |gen, arr|
      arr << gen unless arr.include?(gen)
    end 
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    hash = {}
    @@genres.each do |gen|
      hash[gen] += 1 
    end 
    hash
  end 
  
end 