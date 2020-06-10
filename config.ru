# frozen_string_literal: true

require './config/environment'

map '/v1/geocode' do
  run GeocodeRoutes
end
