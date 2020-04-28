json.extract! tweeet, :id, :tweet, :created_at, :updated_at
json.url tweeet_url(tweeet, format: :json)
