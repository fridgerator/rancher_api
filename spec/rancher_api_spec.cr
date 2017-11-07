require "./spec_helper"

describe RancherApi do
  describe "#all" do
    it "all" do
      client = rancher_client
      puts client.projects.all.map { |p| p.name }
      puts client.projects.all.size
    end
  end

  describe "#get" do
    it "gets a project instance" do
      client = rancher_client
      x = client.projects.get("1a5")
      puts x.name
    end
  end

  describe "#update" do
    it "should update" do
      name = SecureRandom.hex(8)
      client = rancher_client
      project = client.projects.get("1a5")
      project.name = name
      x = client.projects.update(project)
      x.name.should eq name
    end
  end

  describe "#create" do
    it "should create" do
      name = SecureRandom.hex(8)
      client = rancher_client
      project = Rancher::Api::Project.new
      project.name = name
      project = client.projects.create(project)
      project.name.should eq name
    end
  end

  describe "#deactivate" do
    it "should deactivate" do
      client = rancher_client
      project = client.projects.all.select { |p| p.id != "1a5" }.last
      project = client.projects.deactivate(project)
      puts project.to_json
    end
  end

  describe "#delete" do
    it "should delete" do
      client = rancher_client
      projects = client.projects.all.select { |p| p.id != "1a5" }
      projects.each do |project|
        puts client.projects.delete(project)
      end
    end
  end
end
