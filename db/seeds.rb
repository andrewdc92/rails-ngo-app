# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@Konbit =

"In creole, 'konbit' means the act of community, and mizik means music. KB is a NYS 501(c)3 non profit that began shortly after the 2010 earthquake."

@KonbitMission =

"This orgnaization's misison statement is grounded in the following tenants. Harnessing the universal power of music to empower, educate, and uplift haiti’s most vulnerable youth is the main focus..
Konbit Mizik provides free production, video, and career management services to local, underground musical artists in Haiti.

They also provide educational and vocational training workshops on professional skills, life skills, music, and academics.

Finally, Konbik Mizik works to mobilize communities throughout Haiti with collective action to address local problems and uplift those least fortunate. At a minimum 75% or more of budget goes towards program services, and a 3rd party accountant in a multi-lingual office audits, reviews, and authorizes all expenses."

@Sakala =

"Sakala is an acronym that stands for Sant Kominote Altènatif Ak Lapè, and going from Haitian Creole to English, translates to “The community center for peaceful alternatives. The organization has successfully maintained a violence-free environment since 2004 when President Jean-Bertrande Aristide was overthrown."

@SakalaMission =
"This organization serves as the only youth community development program in Cite Soleil, and focuses on agronomy (soil maintenance and management), athletics, and academic education to enrich the lives and futures of the city youth."

@ShHaiti =
"Street Hearts Haiti provides around a safe living space for youth where they are provided both academic and hygenic education, athletics, and social work-based incentives."

@ShHaitiMission =
"The home currently houses over 80 children, and puts a large emphasis on working with parents or guardians to develop their own career path and financial plan so that eventually they can provide a stable environment for their own children. SHH also emphasizes that they do not operate as an orphanage, and their goal is NOT to raise children instead of the parents. The school is especially in need of donations to cover food for the children."

@JustHaiti =
"Just Haiti began in 2006, modeled after a fair trade coffee company called Cafe Justo, which is near the Mexico/Arizona border and works to address the poverty and migration issues throughout Mexican communities. Just Haiti was officially formed as a 501c3 tax-exempt nonprofit in 2007 and works to implement a 'fair trade-plus' model where the Haitian farmers receive a great living wage."

@JustHaitiMission =
"Facilitating partnerships between subsistence coffee growers and exporters. The organization works 'with the most vulnerable and economically at-risk communities, who would not otherwise have access to our technical assistance and market development.' Just Haiti pays the price for the fair trade coffee up front without reductions, and then the organization exports, roasts, packages, and sells the coffee. All profits go directly to the growers and their families.
Protecting Haiti’s fragile environment, using environmentally sustainable packaging."

@Youthaiti =
"This nonprofit began building innovative public toilets that convert waste into natural fertilizers for community gardens and also composting.  The normally-devoid soil transforms into a nutrient-rich environment. This grew into education initiatives where local youth learned about different methods of disease transmission and prevention. The center teaches sustainable technologies such as solar water purification and agronomy, and helps individuals implement new skills through leading hands-on community workshops."

@YouthaitiMission =
"Youthaiti is dedicated to helping and encouraging Haitian
young people in their development of ecological projects, including
sanitation initiatives, water-source protection,
community gardening, and reforestation
in their own communities."

@HeartInHaiti =
"Heart in Haiti is a multi-faceted organization that focuses on education through their school, which currently serves over 100 students. There is no free public school system in Haiti, and the school also teaches animal care/breeding/nutrition, vocational skills, and leads community workhops to reach students that cannot access or attend the school."

@HeartInHaitiMission =
"Educating and empowering Haitian youth through academic education, biology, animal husbandry, community outreach, and ethics."

Ngo.destroy_all
Donor.destroy_all

Donor.create({first_name: "Andrew", last_name: "C", email: "ac@gmail.com", password_digest: "testttt"})

Ngo.create({name: "Konbit Mizik", category: "At-Risk Youth", website: "http://www.konbitmizik.org/about-us", content: @Konbit, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=D5ZQGSQVJL4F8", misson: @KonbitMission})
Ngo.create({name: "Sakala/Bochika", category: "At-Risk Youth", website: "http://www.sakala-haiti.org/", content: @Sakala, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=X5AJ3UTP9JXK4", misson: @SakalaMission})
Ngo.create({name: "Street Hearts Haiti", category: "Youth", website: "http://www.streetheartshaiti.org/", content: @ShHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=AA8WR8C6H5JYQ", misson: @ShHaitiMission})
Ngo.create({name: "Just Haiti", category: "Agricultural/Environmental", website: "http://justhaiti.org/", content: @JustHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XCVGYVA6WEP6U", misson: @JustHaitiMission})
Ngo.create({name: "Youthaiti", category: "Health/Community Organizing", website: "http://youthaiti.org/", content: @Youthaiti , donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KD4TG8DKY47FG", misson: @YouthaitiMission})
Ngo.create({name: "Heart in Haiti", category: "Education", website: "http://heartinhaiti.org/who-we-are/", content: @HeartInHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6K46CMT6MH674", misson: @HeartInHaitiMission})
