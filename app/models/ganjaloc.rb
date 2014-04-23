# == Schema Information
#
# Table name: ganjalocs
#
#  id          :integer          not null, primary key
#  latitude    :float
#  longitude   :float
#  address     :string(255)
#  description :string(255)
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Ganjaloc < ActiveRecord::Base
geocoded_by :address
after_validation :geocode, :if => :address_changed?
validates_presence_of :title, :address
validates :address, uniqueness: true


 





end



