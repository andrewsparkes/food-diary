class CreateConsumableItems < ActiveRecord::Migration[5.1]
  def change
    create_table :consumable_items do |t|
      t.string :name
      t.integer :approx_calories
      t.text :notes

      t.timestamps
    end
    add_index :consumable_items, :name, unique: true
  end
end
