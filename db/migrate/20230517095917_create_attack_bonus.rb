class CreateAttackBonus < ActiveRecord::Migration[7.0]
  def change
    create_table :attack_bonus do |t|
      t.integer :level
      t.integer :attack_bonus

      t.timestamps
    end
  end
end
