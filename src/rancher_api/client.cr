module Rancher::Api
  class Client
    property :url, :access_key, :secret_key

    def initialize(@url : String, @access_key : String, @secret_key : String)
    end

    def projects
      Rancher::Api::Resources::Project.new(@url, @access_key, @secret_key)
    end
  end
end
