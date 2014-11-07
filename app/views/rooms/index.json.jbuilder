json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :location, :photo, :description, :squarefootage, :lastused
  json.url room_url(room, format: :json)
end
