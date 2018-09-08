class TweetsController < ApplicationController

  get "/tweets" do
    erb :'/twitter/tweets'
  end

end
