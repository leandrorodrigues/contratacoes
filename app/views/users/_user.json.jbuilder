json.extract! user, :id, :name, :username, :password, :modified_at, :created_at, :updated_at
json.url user_url(user, format: :json)
