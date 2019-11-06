class Category < ApplicationRecord
  validates :name, presence: true, length: { in: 3..15 }
  validates_uniqueness_of :name
end
