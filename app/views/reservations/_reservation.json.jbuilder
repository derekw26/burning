json.extract! reservation, :id, :flight_id, :user_id, :row, :column, :paid, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
