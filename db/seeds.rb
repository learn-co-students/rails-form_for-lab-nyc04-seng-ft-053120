# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = Student.create([
  {
    first_name: "Sarah",
    last_name: "Rose"
  },
  {
    first_name: "Paul",
    last_name: "Cohn"
  },
  {
    first_name: "Teresa",
    last_name: "Lotz"
  },
  {
    first_name: "Jessica",
    last_name: "Zur-Linden"
  },
  {
    first_name: "Ladybug",
    last_name: "Cohn"
  }
])

school_classes = SchoolClass.create([
  {
    title: "History",
    room_number: 402
  },
  {
    title: "Math",
    room_number: 101
  },
  {
    title: "Biology",
    room_number: 222
  },
  {
    title: "English",
    room_number: 346
  }
])