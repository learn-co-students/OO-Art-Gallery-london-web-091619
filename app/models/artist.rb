class Artist
  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    all.map(&:years_experience).sum
  end

  def self.most_prolific
    all.reduce do |memo, painter|
      painter.paintings_per_year > memo.paintings_per_year ? painter : memo
    end
  end

  def save
    self.class.all << self
  end

  def initialize(name:, years_experience:)
    @name = name
    @years_experience = years_experience
    save
  end

  def create_painting(title:, price:, gallery:)
    Painting.new(artist: self, title: title, price: price, gallery: gallery)
  end

  def paintings
    Painting.all.select { |painting| painting.artist.eql?(self) }
  end

  def paintings_per_year
    paintings.count / years_experience
  end

  def galleries
    paintings.map(&:gallery).uniq
  end

  def cities
    galleries.map(&:city).uniq
  end
end
