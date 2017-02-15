class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :interest, presence: true
  validates :duration, presence: true
  belongs_to :user
  validates :user_id, presence: true
  #has_many :item_users
  #has_many :users, through: :item_users
end
