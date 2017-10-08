json.extract! flight, :id, :depature, :arrival, :destination, :baggage_allowance, :capacity, :created_at, :updated_at
json.url flight_url(flight, format: :json)
