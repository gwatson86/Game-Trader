class AddGameNameAndGameCoverToOwns < ActiveRecord::Migration[5.2]
  def change
    add_column :owns, :game_name, :string
    add_column :owns, :game_cover, :string
  end
end
