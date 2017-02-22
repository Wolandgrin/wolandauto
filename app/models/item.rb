class Item < ApplicationRecord
  validates :name, length: { maximum: 40 }, presence: true
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 1000 },  presence: true
  validates :interest, numericality: { greater_than: 0, less_than_or_equal_to: 100  },  presence: true
  validates :duration, numericality: { greater_than: 0, less_than_or_equal_to: 70 },  presence: true
  #has_many :item_users
  #has_many :users, through: :item_users
  
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true

  def column_data
    array = []
    duration.times do |year|
      result = ((1+ interest.fdiv(100.0)) ** ( year) * price).round(2)
      array.push( result )
    end
    hash = Hash[(1...array.size+1).zip array]
  end
end
