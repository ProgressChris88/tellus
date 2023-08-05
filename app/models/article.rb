class Article < ApplicationRecord
  has_many :countries, through: :tags
  has_many :topics, through: :tags

  validates :title, :content, :url, presence: true
end
