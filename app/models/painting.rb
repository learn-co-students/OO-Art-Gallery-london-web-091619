class Painting
  attr_reader :artist, :title, :price, :gallery

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    all.map(&:price).reduce(:+)
  end

  def save
    self.class.all << self
  end

  def initialize(artist:, title:, price:, gallery:)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery
    save
  end
end
