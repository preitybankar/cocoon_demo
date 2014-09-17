json.array!(@seasons) do |season|
  json.extract! season, :id, :season_name, :active
  json.url season_url(season, format: :json)
end
