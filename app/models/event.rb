class Event < ActiveRecord::Base
    has_many :event_galleries, :dependent => :delete_all
    
    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :date_start
    validates_presence_of :date_end
    
    has_attached_file :image, :styles => { :thumb => "125x125>", :home_evt => "202x36>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
