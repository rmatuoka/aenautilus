class Section < ActiveRecord::Base
    has_many :categories, :dependent => :delete_all
    
    validates_presence_of :title
end
