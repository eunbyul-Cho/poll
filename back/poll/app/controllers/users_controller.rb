class UsersController < ApplicationController
  def show
    @currentUser = User.find_by(id:params[:id])
    if !@currentUser
      render text:"noUser"
    else
    render json: @currentUser.votes
    end
  end

  def create
     User.create(name:params[:name])
     render text: params[:name]
     #redirect_to '/'
  end
end
