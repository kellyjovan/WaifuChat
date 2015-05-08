class Appearances < ActiveRecord::Migration
  def up
    create_table :appearances do |t|
      t.integer :character_id
      t.string  :appearance
    end
  end

  def down 
    drop_table :appearances
  end
end
