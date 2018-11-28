class User < ApplicationRecord
    has_secure_password

    has_many :owns, dependent: :destroy
    has_many :wants, dependent: :destroy
    has_many :owned_games, through: :owns, source: :game, dependent: :destroy
    has_many :wanted_games, through: :wants, source: :game, dependent: :destroy
    has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
    has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id', dependent: :destroy
    has_many :sent_reviews, class_name: 'Review', foreign_key: 'sender_id'
    has_many :received_reviews, class_name: 'Review', foreign_key: 'recipient_id', dependent: :destroy

    validates :username, length: {minimum: 3}
    validates :username, uniqueness: true
    validates :email, length: {minimum: 7}
    validates :email, uniqueness: true
    validates :password, length: {minimum: 5}
end
