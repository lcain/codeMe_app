json.array!(@styles) do |style|
  json.extract! style, :id, :user_id, :content
  json.url style_url(style, format: :json)
end
