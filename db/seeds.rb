# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Balloon.destroy_all
Parade.destroy_all

p1 = Parade.create(name: "Macy's Day Parade", budget: 500 )
Parade.create(name: "Bracy's Day Parade", budget: 500 )

Balloon.create(name: "Zelda", parade_id: p1.id, color: "white", size:2)
Balloon.create(name: "Snoopy", parade_id: p1.id, color: "white", size:25)
Balloon.create(name: "Pikachu", parade_id: p1.id, color: "yellow", size:10)
