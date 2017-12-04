# frozen_string_literal: true

# Documentation: Initial migration to create database
class InitialDatabase < ActiveRecord::Migration[5.1]
  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  def change
    create_table :consumable_item_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :consumable_item_types, :name, unique: true

    create_table :consumable_items do |t|
      t.references :consumable_item_type, foreign_key: true
      t.string :name
      t.integer :approx_calories
      t.text :notes

      t.timestamps
    end
    add_index :consumable_items, :name, unique: true

    create_table :symptom_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :symptom_types, :name, unique: true

    create_table :symptoms do |t|
      t.references :symptom_type, foreign_key: true
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.text :description

      t.timestamps
    end
    add_index :symptoms, :name, unique: true
  end
  # rubocop:enable
end
