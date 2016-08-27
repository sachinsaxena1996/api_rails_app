json.extract! distance_search, :id, :source_zip_code, :destination_zip_code, :calculated_distance, :created_at, :updated_at
json.url distance_search_url(distance_search, format: :json)