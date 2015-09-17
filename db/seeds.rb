# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

heather = User.create({name: "Heather", email: "hkemp77@gmail.com", password: "love"})
rik = User.create({name: "Rik", email: "rik@riksansone.com", password: "bruins"})