class Gallery
  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name:, city:)
    @name = name
    @city = city
    save
  end

  def paintings
    Painting.all.select { |painting| painting.gallery.eql?(self) }
  end

  def artists
    paintings.map(&:artist).uniq
  end

  def artist_names
    artists.map(&:name)
  end

  def most_expensive_painting
    paintings.max_by(&:price)
  end
end
