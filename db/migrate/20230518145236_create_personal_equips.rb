class CreatePersonalEquips < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_equips do |t|

      t.timestamps
    end
  end
end
