class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.integer :value
      t.integer :weight

      t.timestamps
    end
  end
end
