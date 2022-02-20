json.extract! photo, :id, :date, :caption, :user_id, :image, :created_at, :updated_at
json.url photo_url(photo, format: :json)
