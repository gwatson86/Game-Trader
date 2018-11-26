class CreateWants < ActiveRecord::Migration[5.2]
  def change
    create_table :wants do |t|
      t.integer :wanter_id
      t.integer :game_id
      t.timestamps
    end
  end
end
