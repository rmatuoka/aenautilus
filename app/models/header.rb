class Header < ActiveRecord::Base
    belongs_to :dynamic_page
    
    has_attached_file :image, :styles => { :thumb => "125x125>", :header => "684x120>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
        
    validates_presence_of :title
    validates_presence_of :image
end
