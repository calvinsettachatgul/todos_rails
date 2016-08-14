# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new()
user2 = User.new()
user3 = User.new()

users = [user1, user2, user3]

users.each do |user |
	user.save
	user.update(first_name: "user#{user.id}first", last_name: "user#{user.id}last", email: "user#{user.id}@example.com")
	user.save
end

users.each_with_index do | user, user_index | 
		
	(1..10).to_a.each do | index |
		user.todos.create( title: "title#{index}#{user.id}", detail: "detail#{index}", status: "status#{index}")
	end	

end