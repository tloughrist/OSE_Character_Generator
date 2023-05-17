class CreateHitDices < ActiveRecord::Migration[7.0]
  def change
    create_table :hit_dices do |t|
      t.integer :level
      t.string :hit_dice

      t.timestamps
    end
  end
end
