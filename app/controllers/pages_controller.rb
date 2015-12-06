class PagesController < ApplicationController
	before_action :authenticate_user!, :except => [:home]
	def show
		 render template: "pages/#{params[:page]}"
	end	
	def home
	end
	def admin
		# render template: "pages/admin", :locals => {:body_class => "admin"}
	end	
end
