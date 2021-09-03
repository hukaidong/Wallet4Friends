json.extract! user, :id, :nickname, :fullname, :created_at, :updated_at
json.url user_url(user, format: :json)
