class AddGameNameAndGameCoverToWants < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :game_name, :string
    add_column :wants, :game_cover, :string
  end
end
