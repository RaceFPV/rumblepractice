class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :health
      t.integer :mana
      t.references :user, index: true

      t.timestamps
    end
  end
end
