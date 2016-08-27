json.extract! consumer, :id, :first_name, :last_name, :created_at, :updated_at
json.url consumer_url(consumer, format: :json)