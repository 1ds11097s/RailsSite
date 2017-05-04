json.extract! board_message, :id, :content, :board_user_id, :created_at, :updated_at
json.url board_message_url(board_message, format: :json)