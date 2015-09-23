json.array!(@translations) do |translation|
  json.extract! translation, :id, :title, :author, :publisher, :date, :link
  json.url translation_url(translation, format: :json)
end
