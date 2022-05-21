require 'rails_helper'

RSpec.describe Handlers::MetadataParser do
  it "gets the metadata" do
    url = 'https://12ft.io/'

    attributes = Handlers::MetadataParser.get_metadata(url)
    expect(attributes).to be_a Hash
    expect(attributes[:url]).to eq 'https://12ft.io/'
  end
end