require 'bundler'
Bundler.require

require './app/models/character'
require './app/models/like'
require './app/models/thing'
require './app/models/user'

configure :development do
  set :database, "sqlite3:db/database.db"
end
