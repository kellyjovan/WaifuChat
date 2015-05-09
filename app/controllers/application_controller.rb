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
   if session[:user_id]
      @user = User.find(session[:user_id])
    end
    erb :index
  end

  get '/new_character' do 
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    erb :new_character
  end

  get '/dash' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @messages = Message.all.reverse
    @users = User.all
    erb :dash
  end

  get '/users' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @users = User.all
    erb :users
  end

  get '/characters' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @characters = Character.all
    @characters = @characters.sort_by {|character| character.name}
    erb :characters
  end

  get '/character/:id' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @character = Character.find(params[:id])
    @appearances = Appearance.all
    @likes = Like.all
    @dislikes = Dislike.all
    erb :chara_template
  end

  get '/character/edit/:id' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @character = Character.find(params[:id])
    @character = Character.find(params[:id])
    @appearances = Appearance.all
    @likes = Like.all
    @dislikes = Dislike.all
    erb :edit
  end
  get '/search' do

  end

  post '/new_character' do
    params[:name] =  params[:name].split(' ').each{|n| n.capitalize!}.join(' ')
    new_character = Character.new(:name => params[:name], :gender => params[:gender], :origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio], :image => params[:image], :quote => params[:quote], :nickname => params[:nickname])
    new_character.save
    params[:likes].each do |l|
      new_like = Like.new(:character_id => new_character.id, :like => l);
      new_like.save
    end
    params[:dislikes].each do |d|
      new_dislike = Dislike.new(:character_id => new_character.id, :dislike => d);
      new_dislike.save
    end
    params[:appearances].each do |a|
      new_appearance = Appearance.new(:character_id => new_character.id, :appearance => a);
      new_appearance.save
    end
    redirect('/character/' + new_character.id.to_s);
  end

  post '/signup' do
    images = ["http://www.titantalk.com/forums/attachments/off-topic-discussion/319906d1413391273-random-internet-images-random2.jpg", "https://s-media-cache-ak0.pinimg.com/originals/a1/e3/6b/a1e36bcb8ce179bd8cc8db28ff4ef6fb.jpg"].sample
    new_user = User.new(:email => params[:email], :username => params[:username], :password => params[:password], :image => images)
    if new_user.username.downcase.include?("banana") == false
      new_user.save
    end
    redirect('/')
  end

  get '/user/:id' do
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @puser = User.find(params[:id])
    erb :profile
  end

  get '/user/edit/:id' do
    @user = User.find(params[:id])
    @current = @user.id
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    erb :edit_user
  end

  post '/signin' do 
    @user = User.find_by(:username => params[:username], :password => params[:password])
    if @user
      session[:user_id] = @user.id
      redirect('/dash')
    else
      erb :error      
    end
  end

  get '/signout' do
    session[:user_id] = nil
    redirect('/')
  end


  post '/search' do
    @results = []
    result = Character.find_by(params[:query])
    @results << result
  end

  post '/delete' do 
    # delete character with selected id
    id = params[:id]
    @character = Character.find(id)
    @character.destroy
    redirect('/characters')
  end

  post '/edituser' do
    @user = User.find(params[:id])
    @user.update_attributes!(:name => params[:name], :birthday => params[:birthday], :country => params[:country], :image => params[:image], :language => params[:language], :about => params[:about])
    redirect('/user/' + @user.id.to_s)
  end

  post '/edit' do
    @character = Character.find(params[:id])
    @character.update_attributes!(:origin => params[:origin], :birthday => params[:birthday], :bio => params[:bio], :image => params[:image], :quote => params[:quote], :nickname => params[:nickname])
    params[:likes].each do |l|

    end
    params[:dislikes].each do |d|

    end
    params[:appearances].each do |a|

    end
    redirect('/character/' + @character.id.to_s)
  end

  post '/message' do
    new_message = Message.new(:user_id => params[:user_id], :message => params[:message])
    new_message.save
    redirect ('/dash')
  end
end
