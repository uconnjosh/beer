class CreateBrewTypes < ActiveRecord::Migration
  def change
    create_table :brew_types do |t|
      t.column :brew_id, :integer
      t.column :tag_id, :integer
      t.timestamps
    end
  end
end
