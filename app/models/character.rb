class Character < ActiveRecord::Base
  has_many :likes
  has_many :things, :through => :likes
end