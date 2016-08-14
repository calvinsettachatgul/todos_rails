# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new( first_name: "user1first", last_name: "user1last", email: "user1@example.com")
user2 = User.new( first_name: "user2first", last_name: "user2last", email: "user2@example.com")
user3 = User.new( first_name: "user3first", last_name: "user3last", email: "user3@example.com")

users = [user1, user2, user3]

users.each do |user |
	user.save
end

users.each_with_index do | user, user_index | 
		
	(1..10).to_a.each do | index |
		user.todos.create( title: "title#{index}", detail: "detail#{index}", status: "status#{index}")
	end	

end