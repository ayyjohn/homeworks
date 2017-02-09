# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

home = House.create!(address: '217 17th ave')
la_jolla = House.create!(address: '9237 regents road')
cohortx = House.create!(address: '1412 15th st')

Person.create!(name: :dylan, house_id: la_jolla.id)
Person.create!(name: :alec, house_id: home.id)
Person.create!(name: :chase, house_id: cohortx.id)
