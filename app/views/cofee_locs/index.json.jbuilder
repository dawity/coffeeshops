json.array!(@cofee_locs) do |cofee_loc|
  json.extract! cofee_loc, :id, :latitude, :longitude, :address, :description, :title
  json.url cofee_loc_url(cofee_loc, format: :json)
end
