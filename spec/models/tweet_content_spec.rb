require 'rails_helper'

RSpec.describe TweetContent, type: :model do
  it "adds a tweet content" do
    tweet = TweetContent.create(content: "test")
    
    pp tweet.resources
    expect(tweet.content).to eq "test"
  end 
end
