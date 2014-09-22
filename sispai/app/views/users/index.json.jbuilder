json.array!(@users) do |user|
  json.extract! user, :id, :name, :cell_phone
  json.url user_url(user, format: :json)
end
