class Polls::CandidatesController < ApplicationController
  def index
    @candidate = Candidate.find_by(id:params[:candidate_id])
    @checkedCandidate = Candidate.find_by(id:params[:candidate_id])
    render json:@candidate
  end

  def update
      @user = User.find(6)
      @id =  params[:candidate_id][0]
      @checkedCandidate = Candidate.find_by(id:params[:candidate_id])
      @counter = @checkedCandidate.count
      @checkedCandidate.update(count:@counter+1)
      @user.candidates << @checkedCandidate
      ###### @id 왜......
      render json:  @id
  end

end
