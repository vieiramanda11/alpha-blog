class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true, length: { in: 3..15 }
  validates_uniqueness_of :name
end
