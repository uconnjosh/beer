class CreateBrewsTypes < ActiveRecord::Migration
  def change
    create_table :brews_types do |t|
      t.column :brew_id, :integer
      t.column :type_id, :integer
      t.timestamps
    end
  end
end
