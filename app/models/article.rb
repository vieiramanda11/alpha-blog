class Article < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, length: { in: 5..25 }
  validates :description, length: { minimum: 5 }
end
