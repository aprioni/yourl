class UrlsController < ApplicationController
	before_filter :signed_in_user
	
	def new
		@url = current_user.lists.first.urls.build(params[:url])
	end

	def create
		@url = current_user.lists.find(params[:url][:list_id]).urls.build(params[:url])
		if @url.save
			flash[:success] = "Url created!"
			redirect_to root_path
		else
			render 'new'
		end
	end
end