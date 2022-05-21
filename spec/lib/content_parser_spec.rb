require './app/graphql/handlers/content_parser'

RSpec.describe ContentParser do
  it "parser correctly the url/s" do
    content = 'Best thing I found in a while: https://12ft.io/'

    url = ContentParser.get_urls(content)
    expect(url).to be_a Array
    expect(url[0]).to eq 'https://12ft.io/'
  end
end