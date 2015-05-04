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
    erb :profile
  end

  get '/characters' do
    @characters = Character.all
    @characters = @characters.sort_by {|character| character.name}
    erb :characters
  end

  get '/character/:id' do
    @character = Character.find(params[:id])
    erb :chara_template
  end

  get '/character/edit/:id' do
    @character = Character.find(params[:id])
    erb :edit
  end
  get '/search' do

  end

  post '/new_character' do
    params[:name] =  params[:name].split(' ').each{|n| n.capitalize!}.join(' ')
    new_character = Character.new(:name => params[:name], :gender => params[:gender], :origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio], :image => params[:image], :quote => params[:quote], :nickname => params[:nickname])
    new_character.save
    redirect('/character/' + new_character.id.to_s);
  end

  post '/signup' do
    new_user = User.new(:email => params[:email], :username => params[:username], :password => params[:password])
    new_user.save
    redirect('/user/' + new_user.id.to_s)
  end

    get '/user/:id' do
    @user = User.find(params[:id])
    erb :profile
  end

  get '/user/edit/:id' do
    @user = User.find(params[:id])
    @user.update_attributes!(:name => params[:name], :birthday => params[:birthday], :country => params[:country], :image => params[:image], :language => params[:language], :about => params[:about])
    redirect('/user/' + )
    erb :edit_user
  end

  post '/signin' do 
    @user = User.find_by(:username => params[:username], :password => params[:password])
    redirect('/')
  end

  post '/delete' do 
    # delete character with selected id
    id = params[:id]
    @character = Character.find(id)
    @character.destroy
    redirect('/characters')
  end

  post '/edit' do
    @character = Character.find(params[:id])
    @character.update_attributes!(:origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio], :image => params[:image], :quote => params[:quote], :nickname => params[:nickname])
    redirect('/character/' + @character.id.to_s)
  end
end
