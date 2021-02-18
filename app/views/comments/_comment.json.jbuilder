# frozen_string_literal: true

json.extract! comment, :id, :channel_id, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
