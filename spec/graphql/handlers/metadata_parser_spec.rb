require 'rails_helper'

RSpec.describe Handlers::MetadataParser do
  subject(:attributes) { Handlers::MetadataParser.get_metadata( 'https://12ft.io/' ) }
  it "gets the metadata" do

    expect(attributes).to be_a Hash
    expect(attributes[:url]).to eq 'https://12ft.io/'
  end
end