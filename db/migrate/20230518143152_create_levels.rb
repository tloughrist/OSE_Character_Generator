class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.belongs_to(:char_class, foreign_key: true)
      t.integer :level
      t.string :hit_dice
      t.integer :attack_bonus
      t.integer :xp
      t.integer :death
      t.integer :wands
      t.integer :paralysis
      t.integer :breath
      t.integer :spell
      t.integer :sp_1
      t.integer :sp_2
      t.integer :sp_3
      t.integer :sp_4
      t.integer :sp_5
      t.integer :sp_6
      t.string :turn_1
      t.string :turn_2
      t.string :turn_3
      t.string :turn_4
      t.string :turn_5
      t.string :turn_6
      t.string :turn_7_9
      t.integer :assas_mod
      t.integer :track

      t.timestamps
    end
  end
end
