class ChangeWantColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :wants, :wanter_id, :user_id
  end
end
