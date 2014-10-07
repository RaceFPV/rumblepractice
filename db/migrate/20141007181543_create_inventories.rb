class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
