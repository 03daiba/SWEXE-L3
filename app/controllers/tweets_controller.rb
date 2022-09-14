class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    tweet = Tweet.new(message: params[:tweet][:message], tdate: Datetime.now)
    tweet.save
    redirecct_to '/'
  end
end
