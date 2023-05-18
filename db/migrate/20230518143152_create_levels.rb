class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
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
      t.string :t_1
      t.string :t_2
      t.string :t_3
      t.string :t_4
      t.string :t_5
      t.string :t_6
      t.string :t_7_9
      t.integer :as_mod
      t.string :track

      t.timestamps
    end
  end
end
