class Image < ActiveRecord::Migration
  def up
    add_column :characters, :images, :string
  end

  def down
    remove_column :characters, :images
  end
end
