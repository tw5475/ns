module Ns
  class Client
    URL  = 'http://webservices.ns.nl'
    PORT = '80'

    def initialize(api_key = '', api_password = '', opts = {})
      set_api_cridentials(api_key, api_password)
      set_options(opts)
      create_http_client
    end

    def get_departures(station, opts = {}, &block)
      options = {

      }.update(opts)

    end

    def get_prices(from, to, opts = {}, &block)
      options = {
        through: false,
        date_time: false
      }.update(opts)

    end

    def get_travel_advice(from, to, opts = {}, &block)
      options = {
        through: false,
        previous_advices: 5,
        next_advices: 5,
        date_time: false,
        departure: true,
        hsl_allowed: true,
        year_card: false


      }.update(opts)

    end

    def get_stations

    end

    def get_maintenances(station, actual, unplanned)

    end

    private

    def set_api_cridentials(api_key, api_password)
      @api_key      = api_key
      @api_password = api_password
    end

    def set_options(options)
      @options = {

      }.update(options)
    end

    def create_http_client
      @client = http = Net::HTTP.new(URL, PORT)
    end
  end
end