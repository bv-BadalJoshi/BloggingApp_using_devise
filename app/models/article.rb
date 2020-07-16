class Article < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: { minimum: 2, maximum: 50 }
	validates :description, presence: true, length: { minimum: 4, maximum: 2000 }
	validates :user_id, presence: true	

	scope :short_desc, -> {where("LENGTH(description) > 100")}
	scope :long_desc, -> {where("LENGTH(description) <= 100")}
	scope :all_desc, -> {Article.all}
end
