Faker.class #=> uninitialized constant Faker (NameError)

require "faker"

Faker.class       #=> Module
Faker::Name.class #=> Class

Faker::Name.name                #=> "Harvey Balistreri II"
Faker::Name.first_name          #=> "Cheryle"
Faker::Name.last_name           #=> "Kunze"
Faker::Music.instrument         #=> "Trumpet"
Faker::Sports::Football.player  #=> "Antoine Griezmann"
Faker.constants.length          #=> 126
