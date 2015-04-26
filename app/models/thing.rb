require './config/environment'
class Thing < ActiveRecord::Base
  has_many :things
  has_many :characters , :through => :things
end