class UserAbout < ActiveRecord::Migration
   def up
    add_column :users, :about, :string
  end
  def down
    remove_column :users, :about
  end

end
