json.extract! task, :id, :title, :notes, :date, :completed, :category_id, :created_at, :updated_at
json.url task_url(task, format: :json)
