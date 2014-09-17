json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :youth_flag, :email, :phone, :active_flag, :delete_flag
  json.url member_url(member, format: :json)
end
