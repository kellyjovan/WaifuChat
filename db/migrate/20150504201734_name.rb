class Name < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
    add_column :users, :birthday, :string
    add_column :users, :country, :string
    add_column :users, :language, :string
  end

  def down
    remove_column :users, :name
    remove_column :users, :birthday
    remove_column :users, :country
    remove_column :users, :language
  end
end
