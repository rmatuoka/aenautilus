class Product < ActiveRecord::Base
    belongs_to :category
    has_many :product_images, :dependent => :delete_all

	has_attached_file :pdf,
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension" 
    
	has_attached_file :video,
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"

    validates_presence_of :title
end
