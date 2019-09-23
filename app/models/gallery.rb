class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    painting.all.select {|painting| painting.gallery == self }
  end

  def artists
    painting.map { |painting| painting.artist}
  end

  def artist_names
    artist.map {|artist| artist.name }
  end

  def most_expensive_painting
    painting.max_by do |painting|
      painting.price
    end
  end

end
