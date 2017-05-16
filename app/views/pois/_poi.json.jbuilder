json.extract! poi, :id, :name, :address, :description, :openings, :stars, :created_at, :updated_at
json.url poi_url(poi, format: :json)
