json.array!(@searches) do |search|
  json.extract! search, :id, :name, :email, :address, :mobile, :landline
  json.url search_url(search, format: :json)
end
