class CreateOwns < ActiveRecord::Migration[5.2]
  def change
    create_table :owns do |t|
      t.integer :owner_id
      t.integer :game_id
      t.timestamps
    end
  end
end
