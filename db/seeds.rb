# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ngo.destroy_all
Donor.destroy_all

Donor.create({first_name: "Andrew", last_name: "C", email: "ac@gmail.com", password_digest: "testttt"})

Ngo.create({name: "Konbit Mizik", category: "At-Risk Youth", website: "http://www.konbitmizik.org/about-us", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=D5ZQGSQVJL4F8"})
Ngo.create({name: "Sakala/Bochika", category: "Disaster Relief", website: "http://www.sakala-haiti.org/", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=X5AJ3UTP9JXK4"})
Ngo.create({name: "Street Hearts Haiti", category: "Youth", website: "http://www.streetheartshaiti.org/", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=AA8WR8C6H5JYQ"})
Ngo.create({name: "Just Haiti", category: "Agricultural/Environmental", website: "http://justhaiti.org/", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XCVGYVA6WEP6U"})
Ngo.create({name: "Youhaiti", category: "Health/Community Organizing", website: "http://youthaiti.org/", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KD4TG8DKY47FG"})
Ngo.create({name: "Heart in Haiti", category: "Education", website: "http://heartinhaiti.org/who-we-are/", content: "", donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6K46CMT6MH674"})
