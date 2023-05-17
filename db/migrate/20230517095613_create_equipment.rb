class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :cost
      t.integer :weight
      t.text :special

      t.timestamps
    end
  end
end
