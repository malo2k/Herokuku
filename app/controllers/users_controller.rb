class UsersController < ApplicationController
	def new
		puts "Nouvel user"
		puts params
	end

	def create
		user = User.new
		user.username = params["username"]
		user.email = params["email"]
		user.bio = params["bio"]
		user.save

		puts "User créé"
	end
end
