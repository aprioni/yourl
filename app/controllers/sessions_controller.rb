class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			flash[:success] = "Successfully signed in"
			redirect_to lists_path
		else
			flash.now[:error] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		sign_out
		flash[:success] = "Signed out successfully"
		redirect_to root_path
	end

end
