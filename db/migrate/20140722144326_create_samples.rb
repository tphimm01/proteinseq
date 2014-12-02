class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.integer :order_id
      t.string :name
      t.string :weight
      t.string :estimated_amount
      t.text :how_estimated
      t.string :preparation
      t.string :blot
      t.string :pieces
      t.string :buffer
      t.string :volume
      t.string :concentration
      t.string :enzyme
      t.string :label
      t.string :amount
      t.text :special_instructions

      t.timestamps
    end
  end
end
