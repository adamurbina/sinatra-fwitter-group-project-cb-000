class TweetsController < ApplicationController

  get "/tweets" do
    if Helpers.is_logged_in?(session)
      erb :'/twitter/tweets'
    else
      redirect '/login'
  end

end
