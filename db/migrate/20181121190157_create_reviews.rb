class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :sender_id
      t.integer :recipient_id
      t.timestamps
    end
  end
end
