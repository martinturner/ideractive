json.extract! subject, :id, :name, :subject_code, :created_at, :updated_at
json.url subject_url(subject, format: :json)
