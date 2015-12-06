json.array!(@contacts) do |contact|
  json.extract! contact, :id, :address, :city, :country, :postal_code, :email, :facebook, :twitter, :instagram, :linked_in, :phone
  json.url contact_url(contact, format: :json)
end
