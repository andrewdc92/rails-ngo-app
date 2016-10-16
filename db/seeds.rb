# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ngo.destroy_all
Donor.destroy_all

Donor.create({first_name: "Andrew", last_name: "C", email: "ac@gmail.com", password: "test"})

Ngo.create({name: "Konbit Mizik", category: "At-Risk Youth", website: "http://www.konbitmizik.org/about-us", content: ""})
Ngo.create({name: "Omprakash", category: "Disaster Relief", website: "https://omprakash.org/global/haiti-communitere", content: ""})
Ngo.create({name: "Sakala Haiti", category: "Youth", website: "http://www.sakala-haiti.org/", content: ""})
