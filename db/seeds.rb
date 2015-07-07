# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create(
	username: "Hulk",
	email: "hulksmash@example.com",
	avatar_url: "http://cdn.attackofthecute.com/February-24-2012-23-45-55-tumblrls9b7l6SF01r20hi2o11280.jpg"
	)

User.create(
	username: "Pauline",
	email: "pauline@example.com"
	)

User.create(
	username: "Henry",
	email: "henry@example.com"
	)

User.create(
	username: "Zubair",
	email: "zubair@example.com"
	)