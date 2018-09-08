class TweetsController < ApplicationController

  get "/tweets" do
    if Helpers.is_logged_in?(session)
      @user = Helpers.current_user(session)
      erb :'/twitter/tweets'
    else
      redirect '/login'
    end
  end

end
