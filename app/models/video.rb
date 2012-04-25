class Video < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :link
  validates_presence_of :image
  
  has_attached_file :image, :styles => { :video_img => "470x120>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
