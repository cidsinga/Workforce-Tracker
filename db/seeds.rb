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
#   surveys = []
#   surveys.push(Divisions.create!(title: Faker::TvShows::BreakingBad.episode, author: Faker::Superhero.name))
#   surveys
#   rand(3..15).times do |question|
#     surveys.each do |survey|
#     Question.create! :q1 => Faker::ChuckNorris.fact,
#                      :survey_id => survey.id
#     end
#   end
# end
#
# p "Created #{Divisions.count} surveys"
