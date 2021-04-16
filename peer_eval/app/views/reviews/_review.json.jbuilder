json.extract! review, :id, :comment, :group_id, :project_id, :student_id, :created_at, :updated_at
json.url review_url(review, format: :json)
