json.extract! questionary, :id, :title, :description, :deadline, :created_at, :updated_at
json.url questionary_url(questionary, format: :json)