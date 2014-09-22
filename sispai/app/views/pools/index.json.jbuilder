json.array!(@pools) do |pool|
  json.extract! pool, :id, :address, :owner
  json.url pool_url(pool, format: :json)
end
