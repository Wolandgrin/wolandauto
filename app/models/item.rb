class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 1000 },  presence: true
  validates :interest, numericality: { greater_than: 0, less_than_or_equal_to: 100  },  presence: true
  validates :duration, numericality: { greater_than: 0, less_than_or_equal_to: 70 },  presence: true
  #has_many :item_users
  #has_many :users, through: :item_users
  
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  # validates :content, presence: true, length: { maximum: 140 }
end
