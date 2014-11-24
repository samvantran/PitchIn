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

op1 = org1.opportunities.build(name:"Build House 1", datetime: "2014-11-28 00:00:00")
op2 = org2.opportunities.build(name:"Soup Kitchen 1", datetime: "2014-11-28 00:00:00")
op3 = org3.opportunities.build(name:"Clothing Drive", datetime: "2014-11-29 00:00:00")
op4 = org2.opportunities.build(name:"Disaster Recovery", datetime: "2014-11-27 00:00:00")
op5 = org1.opportunities.build(name:"Build House 2", datetime: "2014-11-28 00:00:00")
op6 = org2.opportunities.build(name:"Feed the Homeless", datetime: "2014-11-29 00:00:00")

org1.save
org2.save
org3.save

op1.needs.build(skill_id: 1)
op1.needs.build(skill_id: 3)
op2.needs.build(skill_id: 1)
op2.needs.build(skill_id: 2)
op2.needs.build(skill_id: 3)
op3.needs.build(skill_id: 1)
op3.needs.build(skill_id: 2)
op3.needs.build(skill_id: 4)
op4.needs.build(skill_id: 4)
op5.needs.build(skill_id: 1)
op5.needs.build(skill_id: 2)
op5.needs.build(skill_id: 3)
op6.needs.build(skill_id: 1)
op6.needs.build(skill_id: 3)

[op1, op2, op3, op4, op5, op6].each {|op| op.save }