class CreateEquips < ActiveRecord::Migration[7.0]
  def change
    create_table :equips do |t|
      t.string :name
      t.boolean :weapon
      t.string :damage
      t.string :attack_modifier
      t.string :range
      t.boolean :blunt
      t.boolean :brace
      t.boolean :charge
      t.boolean :melee
      t.boolean :missile
      t.boolean :reload
      t.boolean :slow
      t.boolean :splash_weapon
      t.boolean :two_handed
      t.boolean :armor
      t.string :armor_class
      t.integer :cost
      t.integer :weight
      t.text :special

      t.timestamps
    end
  end
end
