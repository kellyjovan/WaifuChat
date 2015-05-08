class Character < ActiveRecord::Base
  has_many :likes
  has_many :appearances
end