class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    tweet = Tweet.new(message: params[:tweet][:message], tdate: [:tweet][:tdate])
    tweet.save
    redirecct_to '/'
  end
end
