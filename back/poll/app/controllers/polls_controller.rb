class PollsController < ApplicationController
  def index
    render json: Poll.all
  end
  def create
    @pollName = params[:name]
    Poll.create({ name: @pollName,user_id:3 })
    @pollId = Poll.find_by(name:@pollName).id
    @candidatesList = [params["choice1"],params["choice2"],params["choice3"]]

    Candidate.create([{name:params["choice1"],count:0,poll_id:@pollId},
    {name:params["choice2"],count:0,poll_id:@pollId},
    {name:params["choice3"],count:0,poll_id:@pollId}
    ])
    render json:@pollId
  end

  def new
    render
  end
  def show
    @poll =Poll.find(params[:id])
    @candidates = @poll.candidates
    @pollInfo = {id:@poll.id,name:@poll.name,candidates:@candidates}

  end
  def update
    @user = User.find(4)
    @checkedCandidate = Candidate.find_by(id:params[:candidate_id])
    @counter = @checkedCandidate.count
    @checkedCandidate.update(count:@counter+1)
    @user.candidates << @checkedCandidate
    redirect_to '/'
  end

  def Polls_params
    params.require(:polls).permit(:id, :name)
  end


end
