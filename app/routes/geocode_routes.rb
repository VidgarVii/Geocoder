# frozen_string_literal: true

class GeocodeRoutes < Application
  post '/' do
    content_type :json

    result = Geocoding.call(JSON.parse(request.body.read))

    if result.success?
      status 200
      json(coordinates: { lat: result.lat, lon: result.lon })
    else
      status 404
      json(errors: result.errors)
    end
  end
end
