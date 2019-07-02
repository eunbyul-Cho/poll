class VotesController < ApplicationController
  def index
    render json:  Vote.all
  end
  def create
    @voteName = params[:name]
    Vote.create({ name: @voteName,user_id:3 })
    @voteId = Vote.find_by(name:@voteName).id
    @candidatesList = [params["choice1"],params["choice2"],params["choice3"]]

    Candidate.create([{name:params["choice1"],count:0,vote_id:@voteId},
    {name:params["choice2"],count:0,vote_id:@voteId},
    {name:params["choice3"],count:0,vote_id:@voteId}
  ])
    render json:@voteId
  end

  def new
    render
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
