json.extract! chatroom_user, :id, :chatroom_id, :user_id, :created_at, :updated_at
json.url chatroom_user_url(chatroom_user, format: :json)
