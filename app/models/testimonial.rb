class Testimonial < ActiveRecord::Base
    validates_presence_of :name
    validates_presence_of :company
    
    has_attached_file :image, :styles => { :thumb_depo => "371x97>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
