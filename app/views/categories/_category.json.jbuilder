json.extract! category, :id, :title, :notes, :date, :completed, :user_id, :created_at, :updated_at
json.url category_url(category, format: :json)
