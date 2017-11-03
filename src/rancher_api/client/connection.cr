require "http/client"

module Rancher::Api
  class Client
    module Connection
      def get(base, path, access_key, secret_key)
        request "GET", base, path, access_key, secret_key
      end

      private def request(http_method, base, path, access_key, secret_key)
        client = HTTP::Client.new URI.parse(base)
        client.basic_auth(access_key, secret_key)
        response = client.get "/v2-beta#{path}"
        client.close
        return response.body
      end
    end
  end
end
