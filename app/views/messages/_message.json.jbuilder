json.extract! message, :id, :user_name, :body, :idea_id, :created_at, :updated_at
json.url message_url(message, format: :json)
