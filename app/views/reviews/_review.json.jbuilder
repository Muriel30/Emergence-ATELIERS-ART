json.extract! review, :id, :name, :comment, :stars, :created_at, :updated_at
json.url review_url(review, format: :json)
