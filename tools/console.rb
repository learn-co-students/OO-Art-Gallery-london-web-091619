require_relative '../config/environment.rb'


artist1 = Artist.new("artist1", 3)
artist2 = Artist.new("artist2", 30)
artist3 = Artist.new("artist3", 1)
artist4 = Artist.new("artist4", 2)

gallery1 = Gallery.new("gallery1", "city1")
gallery2 = Gallery.new("gallery2", "city2")
gallery3 = Gallery.new("gallery3", "city3")
gallery4 = Gallery.new("gallery4", "city3")

painting1 = Painting.new("title1", 10, artist1, gallery1)
painting2 = Painting.new("title2", 100, artist1, gallery1)
painting3 = Painting.new("title3", 10, artist2, gallery1)
painting4 = Painting.new("title4", 0, artist3, gallery3)


binding.pry

puts "Bob Ross rules."
