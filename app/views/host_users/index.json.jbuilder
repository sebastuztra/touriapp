json.array!(@host_users) do |host_user|
  json.extract! host_user, :id, :name, :email, :password_digest
  json.url host_user_url(host_user, format: :json)
end
