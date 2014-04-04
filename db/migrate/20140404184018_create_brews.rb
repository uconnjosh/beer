class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.column :company, :string
      t.column :name, :string
      t.column :description, :text
      t.timestamps
    end
  end
end
