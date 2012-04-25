class CaseImage < ActiveRecord::Base
    belongs_to :case
    
    has_attached_file :image, :styles => { :thumb => "125x125>", :c_medio => "550x550>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
        
    validates_presence_of :image
    validates_presence_of :title
end
