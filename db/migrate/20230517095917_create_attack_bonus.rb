class CreateAttackBonuses < ActiveRecord::Migration[7.0]
  def change
    create_table :attack_bonuses do |t|
      t.integer :level
      t.integer :attack_bonus

      t.timestamps
    end
  end
end
