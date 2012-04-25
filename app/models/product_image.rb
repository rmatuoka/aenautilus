class ProductImage < ActiveRecord::Base
    belongs_to :product
    
    has_attached_file :image, :styles => { :thumb => "75x75>", :p_medio => "350x350>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"   

	validates_presence_of :title
	validates_presence_of :image
end
