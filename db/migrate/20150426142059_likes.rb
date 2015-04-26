class Likes < ActiveRecord::Migration
  def up
    create_table :likes do |t|

    end
  end

  def down
    drop_table :likes
  end
end
