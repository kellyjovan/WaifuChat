require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'flatironrulz'
  end

  get '/' do
    erb :index
  end

  get '/new_character' do 
    erb :new_character
  end

  get '/dash' do
    erb :dash
  end

  get '/users' do

  end

  get '/characters' do
    erb :chara_template
  end

  get '/search' do

  end

  post '/new_character' do
    new_character = Character.new(:name => params[:name], :origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio])
    new_character.save
    redirect('/')
  end

  post '/signup' do
    new_user = User.new(:email => params[:email], :username => params[:email], :password => params[:password])
    new_user.save
    redirect('/')
  end

  post '/signin' do 
    @user = User.find_by(:username => params[:username], :password => params[:password])
    redirect('/')
  end
end
