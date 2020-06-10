# frozen_string_literal: true

class Geocoding
  include Interactor

  def call
    coordinates = Geocoder.geocode(context.city)

    if coordinates.empty?
      context.fail!(errors: I18n.t('errors.coordinates.blank'))
    else
      context.lat, context.lon = coordinates
    end
  end
end

