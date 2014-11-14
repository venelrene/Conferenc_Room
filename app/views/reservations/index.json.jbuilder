json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start_at, :ends_at, :notes, :event_title
  json.url reservation_url(reservation, format: :json)
end
