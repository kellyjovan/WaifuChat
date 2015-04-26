class Things < ActiveRecord::Migration
  def up 
    create_table :things do |t|
      t.string :name
      t.string :type
    end
  end

  def down
    drop_table  :things
  end 
end
