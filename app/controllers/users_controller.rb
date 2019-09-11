class UsersController < ApplicationController
  def update
  end
  def index
  	@products = Product.all
  	@users = User.all
  end
  def show
  end
end
