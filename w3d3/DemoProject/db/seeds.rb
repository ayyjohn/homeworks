# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

la_jolla = House.create(address: '9237 Regents Road')

alec = Person.create(name: 'Alec', house_id: 1)
chase = Person.create(name: 'Chase', house_id: 1)
dymk = Person.create(name: 'Dylan', house_id: 3)
