class ScheduleVisit < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :adress
  validates_presence_of :number
  validates_presence_of :postalcode
  validates_presence_of :city
  validates_presence_of :state
end
