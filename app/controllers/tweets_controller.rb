class TweetsController < ApplicationController

  get "/tweets" do
    if Helpers.is_logged_in?(session)
      @user = Helpers.current_user(session)
      @tweets = Tweet.all
      erb :'/twitter/tweets'
    else
      redirect '/login'
    end
  end

  get "/tweets/new" do
    erb :'/twitter/create_tweet'
  end

end
