json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_digest, :city, :state
  json.url user_url(user, format: :json)
end
