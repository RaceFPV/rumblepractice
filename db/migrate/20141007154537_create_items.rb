class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :inventory, index: true

      t.timestamps
    end
  end
end
