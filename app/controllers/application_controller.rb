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
    @characters = Character.all
    # @characters = @characters.sort_by {|character| character.name}
    erb :characters
  end

  get '/character/:id' do
    @character = Character.find(params[:id])
    erb :chara_template
  end
  get '/search' do

  end

  post '/new_character' do
    params[:name] = params[:name].capitalize
    new_character = Character.new(:name => params[:name], :gender => params[:gender], :origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio], :images => params[:images])
    new_character.save
    length = Character.all.length
    redirect('/character/' + length.to_s);
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
