class PagesController < ApplicationController
	before_action :authenticate_user!, :except => [:show]
	def show
		 render template: "pages/#{params[:page]}"
	end	
end
