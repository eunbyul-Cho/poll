class UsersController < ApplicationController
  def show
    @currentUser = User.find_by(id:params[:user_id])
    if !@currentUser
      render text:"NO USER"
    else
    @candidates = @currentUser.candidates
    # TODO render only poll_id
    render json: @candidates
    end
  end

  def create
    User.create(userId:params[:userId],password:params[:password])
    render text: params[:name]
    #redirect_to '/'
  end
end
