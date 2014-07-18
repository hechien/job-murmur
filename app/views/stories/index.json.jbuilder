json.array!(@stories) do |story|
  json.extract! story, :id, :user_id, :location, :content{limit=500}
  json.url story_url(story, format: :json)
end
