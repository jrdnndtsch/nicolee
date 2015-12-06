json.array!(@about_nicolees) do |about_nicolee|
  json.extract! about_nicolee, :id, :description, :photo
  json.url about_nicolee_url(about_nicolee, format: :json)
end
