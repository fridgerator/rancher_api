require "http/client"

module Rancher::Api
  class Client
    module Connection
      def get(base, path, access_key, secret_key)
        client = get_client(base, access_key, secret_key)
        response = client.get "/v2-beta#{path}"
        client.close
        return response.body
      end

      def put(base, path, access_key, secret_key, body = "")
        client = get_client(base, access_key, secret_key)
        response = client.put "/v2-beta#{path}", nil, body
        client.close
        response.body
      end

      def post(base, path, access_key, secret_key, body = "")
        client = get_client(base, access_key, secret_key)
        response = client.post "/v2-beta#{path}", nil, body
        client.close
        response.body
      end

      def delete(base, path, access_key, secret_key)
        client = get_client(base, access_key, secret_key)
        response = client.delete "/v2-beta#{path}"
        client.close
        puts response.status_code
        puts response.body
        response.body
      end

      private def get_client(base, access_key, secret_key)
        client = HTTP::Client.new URI.parse(base)
        client.basic_auth(access_key, secret_key)
        client
      end
    end
  end
end
