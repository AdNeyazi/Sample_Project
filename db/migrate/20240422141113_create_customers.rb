# frozen_string_literal: true

# This migration creates the customers table.
class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
