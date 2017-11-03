module Rancher::Api::Resources
  class Project < Base
    def all
      Array(Rancher::Api::Project).from_json(get(@base, "/projects", @access_key, @secret_key), "data")
    end
  end
end
