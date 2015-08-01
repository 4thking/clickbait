class Post < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates_presence_of :body, :title, :image, :category_id

	extend FriendlyId
	friendly_id :title, use: [:finders, :slugged]


	def should_generate_new_friendly_id?
    	new_record?
  	end


	belongs_to :user
	belongs_to :category

end
