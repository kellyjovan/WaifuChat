require 'bundler'
Bundler.require

require './app/models/character'
require './app/models/like'
require './app/models/thing'
require './app/models/user'
require './app/models/message'
require './app/models/appearance'
require './app/models/like'
require './app/models/dislike'

configure :development do
  set :database, "sqlite3:db/database.db"
end
