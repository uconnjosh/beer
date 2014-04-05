class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.column :name, :string
      t.column :choice_1, :string
      t.column :choice_2, :string
    end
  end
end
