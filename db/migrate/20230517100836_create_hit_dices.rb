class CreateHitDice < ActiveRecord::Migration[7.0]
  def change
    create_table :hit_dice do |t|
      t.integer :level
      t.string :hit_dice

      t.timestamps
    end
  end
end
