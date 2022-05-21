module Types 
  class TweetCreateAttributes < Types::BaseInputObject
    description "Atributtes for creating tweet"
    argument :content, String, "The content for the tweet"
  end
end