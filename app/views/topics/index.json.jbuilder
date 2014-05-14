json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :description, :image_url, :subject_id
  json.url topic_url(topic, format: :json)
end
