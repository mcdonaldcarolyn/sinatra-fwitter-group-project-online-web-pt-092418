class TweetsController < ApplicationController

  get "/tweets" do 
    @tweet = Tweets.all
    erb :"tweets/tweets"
  end

  get "/tweet/new" do
    erb :new
  end

  post "/tweets" do
   erb :show_tweet
  end

  get "tweets/:id" do

  end

  get "/tweets/:id/edit" do 
  end

  post "/tweet/:id" do 
  end

  post "tweet/:id/delete" do
    Tweet.clear
  end


end
