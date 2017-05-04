json.extract! mycontact, :id, :name, :age, :nationality, :mail, :created_at, :updated_at
json.url mycontact_url(mycontact, format: :json)