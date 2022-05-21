require './app/graphql/handlers/metadata_parser'

RSpec.describe MetadataParser do
  it "gets the metadata" do
    url = 'https://12ft.io/'

    attributes = MetadataParser.get_metadata(url)
    expect(attributes).to be_a Hash
    expect(attributes[:url]).to eq 'https://12ft.io/'
  end
end