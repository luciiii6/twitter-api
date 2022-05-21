require './app/graphql/handlers/content_parser'
require './app/graphql/handlers/metadata_parser'

module Handlers
  class TweetHandler
    attr_reader :tweet
    
    def self.create(content)
      TweetHandler.new(TweetContent.create(content: content))
    end

    def initialize(tweet)
      @tweet = tweet
    end

    def create_relationships
      urls = ContentParser.get_urls(@tweet.content)
      resources = Array.new
      urls.each { |url| resources.append(get_resources(url)) }
      @tweet.resources << resources

    end

    private 

    def get_resources(url)
      resource = Resource.find_by(url: url)
      unless resource
        attributes = MetadataParser.get_metadata(url)
        resource = Resource.create(attributes)
        resource.tweet_contents << @tweet
      end

      resource
    end

  end
end