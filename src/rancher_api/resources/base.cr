module Rancher::Api::Resources
  class Base
    include Rancher::Api::Client::Connection

    def initialize(@base : String, @access_key : String, @secret_key : String)
    end
  end
end
