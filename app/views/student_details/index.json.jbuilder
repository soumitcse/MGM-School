json.array!(@student_details) do |student_detail|
  json.extract! student_detail, :id, :regno, :name, :image_id
  json.url student_detail_url(student_detail, format: :json)
end
