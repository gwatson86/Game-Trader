class ChangeOwnColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :owns, :owner_id, :user_id
  end
end
