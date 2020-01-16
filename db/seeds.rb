# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
#
# Divisions.destroy_all
# Question.destroy_all
#
# 50.times do |index|
#   divisions = []
#   divisions.push(Divisions.create!(title: Faker::TvShows::BreakingBad.episode, author: Faker::Superhero.name))
#   divisions
#   rand(3..15).times do |employee|
#     divisions.each do |division|
#     Question.create! :q1 => Faker::ChuckNorris.fact,
#                      :division_id => division.id
#     end
#   end
# end
#
# p "Created #{Divisions.count} divisions"


Division.destroy_all
Employee.destroy_all


15.times do |index|
  divisions = []
  divisions.push(Division.create!(div_name: Faker::TvShows::BreakingBad.episode))
  divisions
  rand(3..15).times do |employee|
    divisions.each do |division|
    Employee.create! :name => Faker::Superhero.name,
                     :division_id => division.id
    end
  end
end

p "Created #{Division.count} divisions"




Project.destroy_all

5.times do |index|
  Project.create!(:proj_name => Faker::Superhero.name)
end

p "Created #{Project.count} projects"
