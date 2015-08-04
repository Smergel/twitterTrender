json.array!(@locations) do |location|
  json.extract! location, :id, :city_name, :worid
  json.url location_url(location, format: :json)
end
