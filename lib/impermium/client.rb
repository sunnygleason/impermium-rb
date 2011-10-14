
require 'silly_putty'
require 'json'

module Impermium
  class Client
    attr_accessor :http_client, :api_token
    DEFAULT_HEADERS = {"Content-Type" => "application/json"}

    def initialize(host, port, api_token)
      @http_client = SillyPutty::DefaultClient.new(host, port)

      # for debugging under 1.9
      # @http_client.request_handler  = -> x { pp x }
      # @http_client.response_handler = -> x { pp x }

      @api_token = api_token
    end

    def post_user_account(user_account)
      body = JSON(user_account.to_hash)
      response = @http_client.request(:POST, "/user/account/3.0/" + @api_token, body, DEFAULT_HEADERS)

      Response.new(response)
    end
  end
end
