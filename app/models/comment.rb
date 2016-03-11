class Comment < ApplicationRecord
  validates :post, presence: true
  validates :content, presence: true
  validates :username, presence: true
  belongs_to :post
end
