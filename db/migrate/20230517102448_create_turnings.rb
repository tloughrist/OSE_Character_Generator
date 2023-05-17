class CreateTurnings < ActiveRecord::Migration[7.0]
  def change
    create_table :turnings do |t|
      t.integer :level
      t.string :one_hd
      t.string :two_hd
      t.string :three_hd
      t.string :four_hd
      t.string :five_hd
      t.string :six_hd
      t.string :seven_plus_hd

      t.timestamps
    end
  end
end
