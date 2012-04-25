class EventGallery < ActiveRecord::Base
    belongs_to :event
    has_many :event_gallery_images
    
    validates_presence_of :title
    
    has_attached_file :image, :styles => { :th_home => "50x50>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
