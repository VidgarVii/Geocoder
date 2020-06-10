# frozen_string_literal: true

class Application < Sinatra::Base
  configure do
    register Sinatra::Contrib

    set :root, Pathname.new(File.expand_path('..', __dir__))
    set :server, :puma
    set :locales, Application.root.join('config', 'locales', 'en.yml')

    register Sinatra::I18n
  end

  configure :development do
    register Sinatra::Reloader

    set :show_exceptions, false
  end
end
