# frozen_string_literal: true

module Resolvers
  class Tweets < Resolvers::Base
    type [Types::TweetType], null: false

    def resolve
      TweetContent.all
    end
  end
end