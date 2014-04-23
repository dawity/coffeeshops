json.array!(@ganjalocs) do |ganjaloc|
  json.extract! ganjaloc, :id, :latitude, :longitude, :address, :description, :title
  json.url ganjaloc_url(ganjaloc, format: :json)
end
