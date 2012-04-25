class Sitecontact < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :message
end
