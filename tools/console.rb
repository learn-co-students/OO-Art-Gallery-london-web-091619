require_relative '../config/environment.rb'

bob = Artist.new(name: 'bob', years_experience: 7)
sarah = Artist.new(name: 'sarah', years_experience: 9)
moma = Gallery.new(name: 'moma', city: 'nyc')
tate = Gallery.new(name: 'tate', city: 'london')
national = Gallery.new(name: 'national', city: 'london')
trees = bob.create_painting(title: 'trees', price: 500, gallery: moma)
sea = bob.create_painting(title: 'sea', price: 900, gallery: national)
rocks = bob.create_painting(title: 'rocks', price: 500, gallery: national)

binding.pry

puts "Bob Ross rules."
