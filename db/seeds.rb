# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require './app/models/comedian.rb'
require './app/models/special.rb'

@c1 = Comedian.create(name: "John Mulaney", age: 39, city: "New York")
@c2 = Comedian.create(name: "Hari Kondabolu", age: 36, city: "New York")
@c3 = Comedian.create(name: "W. Kamau Bell", age: 45, city: "Palo Alto")
@c4 = Comedian.create(name: "Jani Dueñas", age: 45, city: "Chicago")
@c5 = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
@c6 = Comedian.create(name: "Tig Notaro", age: 32, city: "Denver")
@c7 = Comedian.create(name: "Cameron Esposito", age: 32, city: "Denver")
@c8 = Comedian.create(name: "Ali Wong", age: 32, city: "Denver")
@c9 = Comedian.create(name: "Aparna Nancherla", age: 36, city: "Washington, D.C")
@c10 = Comedian.create(name: "Hannah Gadsby", age: 41, city: "Tasmania")
#rake db:seed
@sp1 = Special.create(name: "Kid Georgeous", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c1)
@sp2 = Special.create(name: "New in Town", length: 60, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian: @c1)
@sp3 = Special.create(name: "Warn Your Relatives", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhari-kondabolu-warn-your-relatives-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c2)
@sp4 = Special.create(name: "Private School Negro", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fw-kamau-bell-private-school-negro-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c3)
@sp5 = Special.create(name: "Totally Biased", length: 60, image: "https://media.gettyimages.com/photos/comedian-w-kamau-bell-performs-onstage-at-totally-biased-with-w-kamau-picture-id163442351?s=612x612", comedian: @c3)
@sp6 = Special.create(name: "Grandes Fracasos De Ayer Y Hoy", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjani-duenas-best-comedy-specials-2018.jpeg&w=1600&c=sc&poi=face&q=70", comedian: @c4)
@sp7 = Special.create(name: "Tambourine", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fchris-rock-tambourine-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c5)
@sp8 = Special.create(name: "Kill the Messenger", length: 60, image: "https://images-na.ssl-images-amazon.com/images/I/71vAFTLBOSL._RI_.jpg", comedian: @c5)
@sp9 = Special.create(name: "Happy To Be Here", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Ftig-notaro-happy-to-be-here-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c6)
@sp10 = Special.create(name: "Jokes", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fcameron-esposito-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c7)
@sp11 = Special.create(name: "Hard Knock Wife", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fali-wong-hard-knock-wife-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c8)
@sp12 = Special.create(name: "The Standups", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Faparna-nancherla-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c9)
@sp13 = Special.create(name: "Nanette", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhannah-gadsby-nanette-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c10)
