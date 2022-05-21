require 'rails_helper'

RSpec.describe Resource, type: :model do
  it "adds a resource" do
    resource = Resource.create(title: "test")
    
    expect(resource.title).to eq "test"
    expect { Resource.create(title: "test") }.to change { Resource.count }.by(1)
  end 
end
