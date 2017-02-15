class Page < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :interest, presence: true
  validates :duration, presence: true
end