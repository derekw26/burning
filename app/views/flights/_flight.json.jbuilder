json.extract! flight, :id, :number, :origin, :destination, :date, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)

json.airplane do
  json.extract! flight.airplane, :name, :rows, :columns
end
