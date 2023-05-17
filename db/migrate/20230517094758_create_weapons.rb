class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :damage
      t.string :attack_modifier
      t.text :special
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

      t.timestamps
    end
  end
end
