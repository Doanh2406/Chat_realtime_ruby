class Chatroom < ApplicationRecord
  has_many :chatrom_users
  has_many :users, through: :chatrom_users
  has_many :messages
end
