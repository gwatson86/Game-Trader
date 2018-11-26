class Game < ApplicationRecord
    has_many :owns
    has_many :wants
    has_many :owners, class_name: 'User', through: :owns
    has_many :wanters, class_name: 'User', through: :wants
end
