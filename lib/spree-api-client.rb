require 'faraday_middleware'
require "spree-api-client/version"

require 'spree-api-client/connection'
require 'spree-api-client/request'

require 'spree-api-client/products'
require 'spree-api-client/variants'
require 'spree-api-client/orders'
require 'spree-api-client/taxonomies'
require 'spree-api-client/addresses'
require 'spree-api-client/countries'
require 'spree-api-client/zones'
require 'spree-api-client/properties'

module Spree
  module API
    class Client
      include Spree::API::Client::Connection
      include Spree::API::Client::Request

      include Spree::API::Client::Products
      include Spree::API::Client::Variants
      include Spree::API::Client::Orders
      include Spree::API::Client::Taxonomies
      include Spree::API::Client::Addresses
      include Spree::API::Client::Countries
      include Spree::API::Client::Zones
      include Spree::API::Client::Properties

      attr_accessor :api_endpoint, :api_token, :per_page
      def initialize(api_endpoint, api_token, options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
