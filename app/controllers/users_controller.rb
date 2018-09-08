class UsersController < ApplicationController

  get '/login' do
    erb :'/login'
  end

  get '/signup' do
    erb :'/signup'
  end

  post '/signup' do
    params.each do |key, value|
      redirect '/signup' if value.empty?
    end

    user = User.create(username: params[:username], email: params[:email], password: params[:password])

    erb :'/twitter/tweets'

  end

  post '/login' do
    @user = User.find_by(username: params[:username], password: params[:password], )

    if @user
      redirect :'/twitter/tweets'
    end
  end

end
