json.extract! board_user, :id, :nickname, :account_id, :memo, :created_at, :updated_at
json.url board_user_url(board_user, format: :json)