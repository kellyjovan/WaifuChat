class Likes < ActiveRecord::Migration
  def up
    create_table :likes do |t|
      t.integer :character_id
      t.string  :like
    end
  end

  def down 
    drop_table :likes
  end
end
