# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student = Student.create([
    {
        first_name: 'Kelsey',
        last_name: "Dickson"
    },
    {
        first_name: 'Trevor',
        last_name: "Dickson"
    },
    {
        first_name: 'Georgia',
        last_name: "Dickson"
    },
    {
        first_name: 'Luke',
        last_name: "Dickson"
    }
])

puts 'Done seeding!'