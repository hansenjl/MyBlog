# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{username: 'daffy', email:'daffy@gmail.com', password: 'abc123'}, {username: 'bugs', email:'bugs@gmail.com', password: 'def456'}, {username: 'mickey', email:'mickey@gmail.com', password: 'ghi789'}, {username: 'minnie', email:'minnie@gmail.com', password: 'password'}])

Category.create([{name: 'Fashion'}, {name: 'Movies'}, {name: 'Food'}, {name: 'Travel'}, {name: 'Outdoors'}])

Post.create([{category_id: 1, user_id: 1, title: 'Fall is Sweet So Why Not Have a Disney Treat?', content: 'This shirt is designed with just a small sampling of the many treats that make fall so sweet! An orange cupcake (which I’m imagining is pumpkin spice with cream cheese frosting), a fabulous Mickey Mouse shaped donut (just like the ones at Starbucks), and a sticky sweet caramel apple. Yummm! Just looking at this shirt is giving me some serious sugar cravings.'}, {category_id: 2, user_id:2, title:'The Goofy Movie', content:"This animated Disney feature centers on Goofy's teenage son Max, who is dragged off on vacation just as he was about to ask his dreamgirl, Roxanne, on a date. As Max and Goofy head to the forest for some camping, Max schemes to get them to a concert in L.A."}, {category_id: 3, user_id: 2, title:'Carrots are Delicious', content:'Give me all the carrots!!!!!'},  {category_id: 5, user_id: 2, title:'Hunting Season', content:'You should always stay inside during the rabbit hunting season'},  {category_id: 3, user_id: 3, title:'Ice Cream', content:'Those chocolate covered mickey mouse ears filled with ice cream are the very best'},  {category_id: 4, user_id: 3, title:'Disney', content:'Have you traveled to Disney World? It is one of my favorite places in the world!!!'} ])