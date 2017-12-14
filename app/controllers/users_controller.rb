class UsersController < ApplicationController


## recup du profil pour la page profil (Y.B)
	def show


		@user = User.find(params[:id])




	end
	
	end


	
