# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.create(name: "John Mulaney", age: 39, city: "New York")
Comedian.create(name: "Hari Kondabolu", age: 36, city: "New York")
Comedian.create(name: "W. Kamau Bell", age: 45, city: "Palo Alto")
Comedian.create(name: "Jani Dueñas", age: 45, city: "Chicago")
Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
Comedian.create(name: "Tig Notaro", age: 32, city: "Denver")
Comedian.create(name: "Cameron Esposito", age: 32, city: "Denver")
Comedian.create(name: "Ali Wong", age: 32, city: "Denver")
Comedian.create(name: "Aparna Nancherla", age: 36, city: "Washington, D.C")
Comedian.create(name: "Hannah Gadsby", age: 41, city: "Tasmania")
#rake db:seed
Special.create(name: "Kid Georgeous", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 1)
Special.create(name: "New in Town", length: 60, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian_id: 1)
Special.create(name: "Warn Your Relatives", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhari-kondabolu-warn-your-relatives-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 2)
Special.create(name: "Private School Negro", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fw-kamau-bell-private-school-negro-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 3)
Special.create(name: "Totally Biased", length: 60, image: "https://media.gettyimages.com/photos/comedian-w-kamau-bell-performs-onstage-at-totally-biased-with-w-kamau-picture-id163442351?s=612x612", comedian_id: 3)
Special.create(name: "Grandes Fracasos De Ayer Y Hoy", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjani-duenas-best-comedy-specials-2018.jpeg&w=1600&c=sc&poi=face&q=70", comedian_id: 4)
Special.create(name: "Tambourine", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fchris-rock-tambourine-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 5)
Special.create(name: "Kill the Messenger", length: 60, image: "https://images-na.ssl-images-amazon.com/images/I/71vAFTLBOSL._RI_.jpg", comedian_id: 5)
Special.create(name: "Happy To Be Here", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Ftig-notaro-happy-to-be-here-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 6)
Special.create(name: "Rape Jokes", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fcameron-esposito-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 7)
Special.create(name: "Hard Knock Wife", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fali-wong-hard-knock-wife-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 8)
Special.create(name: "The Standups", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Faparna-nancherla-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 9)
Special.create(name: "Nanette", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhannah-gadsby-nanette-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 10)
