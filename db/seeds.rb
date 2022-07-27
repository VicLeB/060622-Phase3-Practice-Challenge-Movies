# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
Role.create(salary: 1000, character_name: "Anna", actor_id: lindsay_lohan.id, movie_id:mean_girls.id)
Role.create(salary: 8000, character_name: "Mrs.H", actor_id: tina_fey.id, movie_id:mean_girls.id)
Role.create(salary: 7000, character_name: "baby", actor_id: baby_spice.id, movie_id:spice_world.id)
Role.create(salary: 8000, character_name: "ginger", actor_id: ginger_spice.id, movie_id:spice_world.id)
Role.create(salary: 5000, character_name: "scary", actor_id: scary_spice.id, movie_id:spice_world.id)
Role.create(salary: 9000, character_name: "sporty", actor_id: sporty_spice.id, movie_id:spice_world.id)
Role.create(salary: 10000, character_name: "posh", actor_id: posh_spice.id, movie_id:spice_world.id)

puts "Seeding done!"