class Blog < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  has_many :posts, dependent: :destroy
end
