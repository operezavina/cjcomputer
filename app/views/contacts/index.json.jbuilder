json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :address, :email, :phone, :comments
  json.url contact_url(contact, format: :json)
end
