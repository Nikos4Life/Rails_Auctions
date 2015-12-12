class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
		rescue ActiveRecord::RecordNotFound
      	render "no_user_found"
	end
end
