class CreateArmors < ActiveRecord::Migration[7.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :armor_class
      t.integer :cost
      t.integer :weight
      t.text :special

      t.timestamps
    end
  end
end
