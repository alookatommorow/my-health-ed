# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
girls = Perspective.create!({ name: "girls" })
guys = Perspective.create!({ name: "guys" })
parents = Perspective.create!({ name: "parents" })
other = Perspective.create!({ name: "other" })

p other

girl_story = Story.create!({ perspective: girls, title: "girl story" })
guy_story = Story.create!({ perspective: guys, title: "guy story" })
parent_story = Story.create!({ perspective: parents, title: "parent story" })
other_story = Story.create!({ perspective: other, title: "other story" })

p girl_story
