require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_text = File.read(Rails.root.join('lib', 'assets', 'foods2.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Ingredient.new
  t.name = row
  t.save
end

usr_list = [
  {name: "App Admin", username: "admin", password: "password"},
  {name: "Bilbo Baggins", username: "bilbo", password: "password"},
  {name: "Gollum", username: "gollum", password: "password"},
  {name: "Beorn", username: "beorn", password: "password"},
  {name: "Gandalf", username: "gandalf", password: "password"},
  {name: "Smaug", username: "smaug", password: "password"},
  {name: "Balin", username: "balin", password: "password"},
  {name: "Elrond", username: "elrond", password: "password"},
  {name: "Radagast", username: "radagast", password: "password"},
  {name: "Dwalin", username: "Dwalin", password: "password"},
  {name: "Bard", username: "bard", password: "password"},
]

usr_list.each do |hash|
  User.create(hash)
end

20.times do
  r = Recipe.create(name: Faker::Food.dish, details: Faker::Food.description, user_id: rand(1..15))
  5.times do
    r.ingredients << Ingredient.create(name: Faker::Food.unique.ingredient)
  end
end

5.times do
  @title = Faker::LordOfTheRings.location[0..19]
  @date = Faker::Date.forward(23)
  @location = Faker::Address.state
  @details = Faker::Hipster.paragraph
  @event = Event.create(title: @title, date: @date,timeconvention: "AM",location: @location, details: @details)
end

User.all.each do |user_obj|
  user_obj.events << Event.find(rand(1..5))
end
