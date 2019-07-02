class VotesController < ApplicationController
  def index
    render json:  Vote.all
  end
  def show
    @vote = Vote.find(params[:id])
    render json:@vote
  end

  def votes_params
    params.require(:votes).permit(:id, :name)
  end
end
