class UsersController < ApplicationController
  def show
    @currentUser = User.find_by(id:params[:user_id])
    if !@currentUser
      render text:"NO USER"
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
