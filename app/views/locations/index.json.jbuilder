json.array!(@locations) do |location|
  json.extract! location, :id, :city_name, :woeid, :user_id
  json.url location_url(location, format: :json)
end
