class HomeController < ApplicationController
	def index
		users = User.all
		render json: users
	end

	def show 
		user = User.getRaphael
		render json: users
	end

	def update
	end

	def delete
	end
end
