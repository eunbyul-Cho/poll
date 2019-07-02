class VotesController < ApplicationController
  def index
    render json:  Vote.all
  end
  def show
    @vote = Vote.find(params[:id])
    @candidates = @vote.candidates
    @voteInfo = {id:@vote.id,name:@vote.name,candidates:@candidates}
    render json: @voteInfo
  end

  def votes_params
    params.require(:votes).permit(:id, :name)
  end
end
