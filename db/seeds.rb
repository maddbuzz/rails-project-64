# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create([{ name: 'Категория 1' }, { name: 'Категория 2' }]) unless Category.count

User.create(email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret') unless User.count
users = User.all

unless Post.count
  10.times do
    Post.create({ title: Faker::Lorem.unique.sentence, body: Faker::Lorem.unique.paragraph, category: categories.sample, creator: users.sample })
  end
end
