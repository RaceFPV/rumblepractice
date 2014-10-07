class AddAttributesToItem < ActiveRecord::Migration
  def change
    add_column :items, :itemName, :string
    add_column :items, :value, :integer
    add_column :items, :weight, :integer
  end
end
