# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = 3.times do
  Author.create([{name: Faker::Book.author,
                  birthplace: "Houston, Texas",
                  birth_year: 1960}])
end

Book.create(name: Faker::Book.title,
            author: Author.first,
            description: Faker::Lorem.sentence,
            publication_year: 2000)

Book.create(name: Faker::Book.title,
            author: Author.first,
            description: Faker::Lorem.sentence,
            publication_year: 2000)

Book.create(name: Faker::Book.title,
            author: Author.last,
            description: Faker::Lorem.sentence,
            publication_year: 2000)