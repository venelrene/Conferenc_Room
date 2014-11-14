json.array!(@campuses) do |campus|
  json.extract! campus, :id, :name, :city, :state, :phone_number, :zip_code, :street_address
  json.url campus_url(campus, format: :json)
end
