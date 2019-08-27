class Article < ApplicationRecord
	belongs_to :category
	belongs_to :user
	has_many :comments
	validates :title, :image, presence: true
	has_one_attached :image
end
