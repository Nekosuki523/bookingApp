json.extract! roomimage, :id, :name, :avatar_path, :created_at, :updated_at
json.url roomimage_url(roomimage, format: :json)
