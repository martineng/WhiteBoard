json.extract! course, :id, :course_name, :course_code, :stream, :description, :user_id, :created_at, :updated_at
json.url course_url(course, format: :json)
