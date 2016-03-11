class Post < ApplicationRecord
  validates :blog, presence: true
  validates :content, presence: true
  validates :username, presence: true
  belongs_to :blog
  has_many :comments, dependent: :destroy
end
