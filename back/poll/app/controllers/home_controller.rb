class HomeController < ApplicationController
  def index
    @polls = Poll.all
  end
  def show

    @poll = Poll.find(params[:id])
    @candidates = @poll.candidates
    render text: @poll.name
  end
end
