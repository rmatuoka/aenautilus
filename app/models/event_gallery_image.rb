class EventGalleryImage < ActiveRecord::Base
    belongs_to :event_gallery
    
    has_attached_file :image, :styles => { :thumb => "100x100>", :e_medio => "550x550>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
        
    validates_presence_of :title
    validates_presence_of :image
end
