class UsersController < ApplicationController
  def create
     User.create(name:params[:name])
     render text: params[:name]
     #redirect_to '/'
  end
end
