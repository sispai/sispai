json.array!(@pool_accesses) do |pool_access|
  json.extract! pool_access, :id, :is_opening, :emergency, :timestamp, :user_id, :pool_id
  json.url pool_access_url(pool_access, format: :json)
end
