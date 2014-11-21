# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Skill.create(name: "Reading")
Skill.create(name: "Writing")
Skill.create(name: "Heavy Lifting")
Skill.create(name: "Submarining")

Volunteer.create(name: "Draisy")
Volunteer.create(name: "Tom")
Volunteer.create(name: "Sam")

org1 = Organization.create(name: "Habitat for Humanity")
org2 = Organization.create(name: "Red Cross")
org3 = Organization.create(name: "GoodWill")

# org1.opportunities.build(name: "Build a House in Africa", datetime:2014-11-21 09:06:55 -0500))
