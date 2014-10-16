# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create(title: "Futurama", description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series.")
Video.create(title: "Family Guy", description: "Story about a family")
Video.create(title: "South Park", description: "Kids in a park")
Video.create(title: "Monk", description: "Story about a monk detetctive")

Category.create(name: "Comedy")
Category.create(name: "Drama")
Category.create(name: "Reality")

