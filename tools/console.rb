require_relative '../config/environment.rb'


a1 = Artist.new("Van Gogh", 3)
a2 = Artist.new("Leonardo da vinci", 30)
a3 = Artist.new("El Greco", 20)
a4 = Artist.new("Salvador Dali", 2)

g1 = Gallery.new("British Museum", "England")
g2 = Gallery.new("American Art Museum", "DC")
g3 = Gallery.new("The Louvre", "Paris")
g4 = Gallery.new("Bank of Brazil Museum", "Brazil")


Painting.new("Books", 200, a1, g2)
Painting.new("Flowers", 300, a3, g1)
Painting.new("Birds", 10000, a2, g3)
Painting.new("Boats", 1000, a4, g4)



binding.pry
0

puts "Bob Ross rules."
