class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :interest, presence: true
  validates :duration, presence: true
  #has_many :item_users
  #has_many :users, through: :item_users
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  #validates :user_id, presence: true
  # validates :content, presence: true, length: { maximum: 140 }
end
