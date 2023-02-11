# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.delete_all
categories = Category.create([{ name: 'Категория 1' }, { name: 'Категория 2' }])

User.create email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret'
users = User.all

Post.delete_all
10.times do
  pp Post.create({ title: Faker::Lorem.unique.sentence, body: Faker::Lorem.unique.paragraph, category: categories.sample, creator: users.sample })
end
