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

  end

  get '/users' do

  end

  get '/characters' do

  end

  get '/search' do

  end
end
