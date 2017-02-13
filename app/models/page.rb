class Page < ApplicationRecord
  validates :name, :description, presence: true
end
