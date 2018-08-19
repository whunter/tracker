json.extract! point, :id, :lat, :long, :altitude, :direction, :speed, :user_id, :created_at, :updated_at
json.url point_url(point, format: :json)
