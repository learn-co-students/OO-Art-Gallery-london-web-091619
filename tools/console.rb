require_relative '../config/environment.rb'

artist1 = Artist.new("Joseph Turner", 35)
artist2 = Artist.new("Paul Gauguin", 40)
artist3 = Artist.new("Van Gogh", 22)
artist4 = Artist.new("Pablo Picasso", 60)

gallery1 = Gallery.new("National Gallery", "London")
gallery2 = Gallery.new("Tate Modern", "London")
gallery3 = Gallery.new("Prado", "Madrid")
gallery4 = Gallery.new("Hermatage", "St.Petersburg")

Painting.new("Ship", 7000, artist1, gallery1)
Painting.new("Sunflower", 9500, artist3, gallery4)
Painting.new("Figures", 900, artist2, gallery3)
Painting.new("Abstraction", 10000, artist4, gallery2)


binding.pry
0
puts "Bob Ross rules."
