class Resource < ApplicationRecord
  has_and_belongs_to_many :tweet_contents
end
