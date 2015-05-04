class AddCreationDate < ActiveRecord::Migration
  def up
    add_column :users, :created_at, :datetime
  end

  def down
    remove_column :users, :created_at
  end
end
