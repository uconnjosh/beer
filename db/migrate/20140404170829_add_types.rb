class AddTypes < ActiveRecord::Migration
  def change
    add_column :types, :description, :text
  end
end
