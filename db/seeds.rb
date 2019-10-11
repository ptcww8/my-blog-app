# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'

Article.delete_all
Category.find_or_create_by(name: 'Ministry')
Category.find_or_create_by(name: 'Business')
Category.find_or_create_by(name: 'Other')
Category.find_or_create_by(name: 'General')
Category.find_or_create_by(name: 'Youth')

cat_ids = Category.pluck(:id)
user_ids = User.pluck(:id)

20.times do
  article = Article.create(title: Faker::Lorem.words.join(" "), description: Faker::Lorem.paragraphs(number: 5).join(". "), category_id: cat_ids.sample, user_id: user_ids.sample)
	file = URI.open('https://picsum.photos/280/280')
	article.image.attach(io: file, filename: "#{Faker::Lorem.word}.jpg")
end
