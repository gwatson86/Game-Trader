class Own < ApplicationRecord
    belongs_to :user
    # belongs_to :game

    validates :user_id, presence: true
    validates :game_id, presence: true
    validates :game_name, presence: true
    validates :game_cover, presence: true
    validates_uniqueness_of :game_id, scope: :user_id
end
