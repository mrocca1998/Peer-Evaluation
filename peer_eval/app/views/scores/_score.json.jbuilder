json.extract! score, :id, :rating, :author, :recipient, :review_id, :created_at, :updated_at
json.url score_url(score, format: :json)
