class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post
  #validates :content, presence: true
  validates :star, presence: true
end
