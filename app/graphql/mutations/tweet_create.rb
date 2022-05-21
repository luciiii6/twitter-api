module Mutations
  class TweetCreate < BaseMutation
    argument :attributes, Types::TweetCreateAttributes

    field :tweet, Types::TweetType
    field :errors, [String], null: false
    def resolve(attributes:)
      {
        tweet: { id: 21}
      }
    end
  end
end
