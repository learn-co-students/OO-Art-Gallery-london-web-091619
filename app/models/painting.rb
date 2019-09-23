class Painting
  #Here I declare an attr_reader because i can't change
  attr_reader :title, :price, :artist, :gallery

  @@all = []
  #set instance variable for initialize
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self #class variable to push all to inside of the method
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0) do |sum, painting|
      sum + painting.total_price
    end
  end

end
