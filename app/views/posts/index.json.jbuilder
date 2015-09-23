json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :excerpt, :featured_image, :author, :date
  json.url post_url(post, format: :json)
end
