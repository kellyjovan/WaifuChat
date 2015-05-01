class Characters < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :origin
      t.string :birthday
      t.string :bio
      t.string :nickname
      t.string :quote
      t.string :image
    end
  end

  def down
    drop_table :characters
  end
end
