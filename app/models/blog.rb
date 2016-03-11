class Blog < ApplicationRecord
  validates :title, presence: true
  has_many :posts, dependent: :destroy
end
