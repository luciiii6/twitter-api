module Mutations
  class TweetCreate < BaseMutation
    argument :attributes, Types::TweetCreateAttributes

    field :tweet, Types::TweetType
    field :errors, [String], null: false
    def resolve(attributes:)
      tweet_handler = Handlers::TweetHandler.create(attributes[:content])
      tweet_handler.create_relationships
      {
        tweet: { id: tweet_handler.tweet.id }
      }
    end
  end
end
