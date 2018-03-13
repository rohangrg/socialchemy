class Post < ActiveRecord::Base

	belongs_to :user
	has_many :comments, as: :parent
	has_many :likes , as: :parent
end
