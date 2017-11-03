require "./spec_helper"

describe RancherApi do
  it "works" do
    client = Rancher::Api::Client.new(ENV["RANCHER_URL"], ENV["RANCHER_ACCESS_KEY"], ENV["RANCHER_SECRET_KEY"])
    x = client.projects.all
    puts x
  end
end
