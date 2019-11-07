class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, :description, presence: true
  validates :title, length: { in: 5..25 }
  validates :description, length: { minimum: 5 }
end

