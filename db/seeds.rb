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

girl_story = Story.create!({ perspective: girls, title: "girl story" })
guy_story = Story.create!({ perspective: guys, title: "guy story" })
parent_story = Story.create!({ perspective: parents, title: "parent story" })
other_story = Story.create!({ perspective: other, title: "other story" })

girl_story_texts = StoryText.create!([
	{ story: girl_story, body: "Giiiiiirl these bumps are driving me loco!!!"},
	{ story: girl_story, body: "I've been washing my face like crazy after volleyball practice"},
	{ story: girl_story, body: "But I'm still sooo oily\nPuttin makeup on isnt makin it better 	\xF0\x9F\x98\xA2 \nI thought growing up was supposed to be cute"}
])
guy_story_texts = StoryText.create!([
	{ story: guy_story, body: "Yo I had a wet dream last night" }, 
	{ story: guy_story, body: "And when I woke up my \xF0\x9F\x8D\x86 was bigger" }, 
	{ story: guy_story, body: "Musta been cuz I was thinking bout that new girl in school" }, 
	{ story: guy_story, body: "Told my bro at breakfast and he said it wuz normal \xF0\x9F\x99\x8C" }
])
parent_story_texts = StoryText.create!([
	{ story: parent_story, body: "My kid has his first school dance next Friday and he really wants to go" },
	{ story: parent_story, body: "He keeps asking when I'll sign the permission slip" },
	{ story: parent_story, body: "I trust him but wanna talk to him about how to treat girls with respect" },
	{ story: parent_story, body: "...OR I could just show up at the dance LOL \xF0\x9F\x98\x86" }
])
other_story_texts = StoryText.create!([
	{ story: other_story, body: "My parents call me Larry but I've been going by Kandy since 6th grade" },
	{ story: other_story, body: "My friends call me \xF0\x9F\x8D\xAC n my teachers too" },
	{ story: other_story, body: "They even use she/her/hers pronouns with me" },
	{ story: other_story, body: "Proud to be #transgender" }
])

guys_comments = Comment.create!([
	{ story: guy_story, body: "Yup totally normal!"},
	{ story: guy_story, body: "That happened to me too haha"},
	{ story: guy_story, body: "Very normal and happens to everyone, no worries"}
])

girl_comments = Comment.create!([
	{ story: girl_story, body: "Ugh that is THE WORST"},
	{ story: girl_story, body: "That happens to me too... \xF0\x9F\x98\xA2"},
	{ story: girl_story, body: "My sister is going through the same thing! Hang in there!"},
])

other_comments = Comment.create!([
	{ story: other_story, body: "Oh nice, that's cool"},
	{ story: other_story, body: "Really proud of you!"},
	{ story: other_story, body: "Respect for being true to who you are"}
])

parent_comments = Comment.create!([
	{ story: parent_story, body: "OMG NOOOO don't do that"},
	{ story: parent_story, body: "I wish my parent cared that much!"},
	{ story: parent_story, body: "Awwwwww do you think he has a crush on someone"}
])






