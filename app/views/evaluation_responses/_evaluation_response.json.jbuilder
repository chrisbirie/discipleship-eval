json.extract! evaluation_response, :id, :evaluation_id, :question_id, :response, :comment, :created_at, :updated_at
json.url evaluation_response_url(evaluation_response, format: :json)
