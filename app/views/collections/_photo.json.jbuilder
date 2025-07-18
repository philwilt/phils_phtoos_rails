json.extract! photo, :id, :description, :name, :location, :created_at, :updated_at
json.url photo_url(photo, format: :json)
