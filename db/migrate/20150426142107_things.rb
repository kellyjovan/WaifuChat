class Things < ActiveRecord::Migration
  def up 
    create_table :things do |t|

    end
  end

  def down
    drop_table  :things
  end 
end
