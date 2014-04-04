class AddColumnPictures < ActiveRecord::Migration
  def change
    add_column :brews, :picture, :text
  end
end
