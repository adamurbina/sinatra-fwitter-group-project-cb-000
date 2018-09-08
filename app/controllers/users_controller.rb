class UsersController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

  get '/signup' do

    if Helpers.is_logged_in?(session)
      erb :'twitter/tweets'
    else
      erb :'users/create_user'
    end

  end

  post '/signup' do
    params.each do |key, value|
      redirect '/signup' if value.empty?
    end

    user = User.create(username: params[:username], email: params[:email], password: params[:password])

    session[:user_id] = user.id

    redirect :'twitter/tweets'

  end

  post '/login' do
    @user = User.find_by(username: params[:username], password: params[:password] )

    if @user
      erb :'twitter/tweets'
    end
  end

  get '/' do
    erb :'users/layout'
  end

end
