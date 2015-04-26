class Like < ActiveRecord::Base
  belongs_to :character
  belongs_to :things
end