json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :email, :password_hash, :password_salt, :admin
  json.url user_url(user, format: :json)
end
