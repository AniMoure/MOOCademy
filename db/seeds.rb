# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

15.times do 
	new_course = Course.create(
		title: Faker::DragonBall.character,
		content: Faker::ChuckNorris.fact
	)

	lessons = Lesson.create(
		title: Faker::MostInterestingManInTheWorld.quote,
		body: Faker::DrWho.catch_phrase,
		course_id: rand((Course.first.id)..(Course.last.id))
	)
end