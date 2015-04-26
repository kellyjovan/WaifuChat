class Likes < ActiveRecord::Migration
  def up
    create_table :likes do |t|
      t.integer :character_id
      t.integer :thing_id
    end
  end

  def down
    drop_table :likes
  end
end
