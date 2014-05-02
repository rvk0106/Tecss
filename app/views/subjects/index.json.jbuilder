json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :description, :image_url
  json.url subject_url(subject, format: :json)
end
