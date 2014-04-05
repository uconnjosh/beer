class AddColumns < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string
    add_column :customers, :choice_1, :string
    add_column :customers, :choice_2, :string
  end
end
