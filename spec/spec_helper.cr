require "secure_random"
require "spec"
require "dotenv"
Dotenv.load
require "../src/rancher_api"

def rancher_client
  Rancher::Api::Client.new(ENV["RANCHER_URL"], ENV["RANCHER_ACCESS_KEY"], ENV["RANCHER_SECRET_KEY"])
end
