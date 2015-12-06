class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { large: "1000x1000", medium: "500x500>", thumb: "150x150>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
