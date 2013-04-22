class ListsController < ApplicationController
	before_filter :signed_in_user

	def index
	end

	def new
		@list = current_user.lists.build(params[:list])
	end

	def create
		@list = current_user.lists.build(params[:list])
		if @list.save
			flash[:success] = "List created!"
			
		else
			render 'new'
		end
	end

	def destroy
	end

end