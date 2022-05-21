require 'rails_helper'

RSpec.describe TweetContent, type: :model do
  it "adds a tweet content" do
    tweet = TweetContent.create(content: "test")
    
    tweet.resources.create(id:2)
    expect(tweet.content).to eq "test"
    expect { TweetContent.create(content: "test") }.to change { TweetContent.count }.by(1)
  end 
end
