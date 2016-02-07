json.array!(@hypertexts) do |hypertext|
  json.extract! hypertext, :id, :user_id, :content
  json.url hypertext_url(hypertext, format: :json)
end
