class Dislikes < ActiveRecord::Migration
  def up
    create_table :dislikes do |t|
      t.integer :character_id
      t.string  :dislike
    end
  end

  def down 
    drop_table :dislikes
  end
end
