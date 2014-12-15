# * Created by Dawit Haile Achamyelhe for CS83 - Server-Side Ruby Web Programming*
class CofeeLoc < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  validates_presence_of :title, :address
  validates :address, uniqueness: true

end
