class AddNameHealthManaDescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :health, :integer
    add_column :users, :mana, :integer
    drop_table :characters
  end
end
