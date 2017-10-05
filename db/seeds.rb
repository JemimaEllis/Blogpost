# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p1 = Post.create!(title: "How to eat on a student budget", author: "Amelia Smith", theme: "Food", picture_url: "http://www.easystudentmeals.co.uk/13.jpg", body: "When going to University, no longer having your meals miracously appear when your parents call 'dinner' can be a change. You may start ordering takeaways every night, but after the first week you may then realise you have used up the entirity of your months allowance. Equily you may just start cooking beans on toast every night, but soon you may start to notice the health effects of your un-balanced diet, or you may simply just be so bored of beans on toast that even looking at them makes you feel ill. Well don't worry, these are all normal reactions to living away from home for the first time. So this is a blog with easy, cheap, and balanced meals to help you eat well at university.")

c1 = Comment.create!(username: "cheekymonkey123", body: "This blog saved my life when I went to University", location: "123 Carton lane, Surrey, R5 6HT", email_address: "cheekymonkey123@hotmail.co.uk", age: 19, post_id: p1.id)
c2 = Comment.create!(username: "foodie", body: "Really liked the recipes, great mix of different ingredients", location: "Pocock street, London, SE1 0BW", email_address: "moodiefoodie@gmail.com", age: 20, post_id: p1.id)

puts "Finished seeding..."

