class Thing < ActiveRecord::Base
  has_many :likes
  has_many :characters , :through => :likes
end