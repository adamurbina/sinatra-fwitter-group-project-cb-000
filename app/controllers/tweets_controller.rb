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
    if Helpers.is_logged_in?(session)
      @user = Helpers.current_user(session)
      erb :'/twitter/create_tweet'
    else
      redirect '/login'
    end
  end

  post "/tweets/new" do
    if params[:conent].empty?
      redirect '/tweets/new'
    else
      @user = Helpers.current_user(session)
      
    end
  end

end
