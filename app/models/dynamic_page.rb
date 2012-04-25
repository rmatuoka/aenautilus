class DynamicPage < ActiveRecord::Base
    has_many :headers
    
    validates_presence_of :title
    validates_presence_of :body
    
    has_attached_file :image, :styles => { :thumb => "125x125>", :lateral => "242x242>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
