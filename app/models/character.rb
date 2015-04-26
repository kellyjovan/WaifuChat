require './config/environment'
class Character < ActiveRecord::Base
  has_many :things
  has_many :likes, :through => :things
end