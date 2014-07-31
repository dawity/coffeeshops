class CofeeLoc < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  validates_presence_of :title, :address
  validates :address, uniqueness: true

end
