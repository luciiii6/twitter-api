require 'rails_helper'

RSpec.describe Handlers::ContentParser do
  subject(:url) { Handlers::ContentParser.get_urls('Best thing I found in a while: https://12ft.io/') }
  it "parser correctly the url/s" do
    
    expect(url).to be_a Array
    expect(url[0]).to eq 'https://12ft.io/'
  end
end