# frozen_string_literal: true

module Types
  class ResourceType < Types::BaseObject
    field :title, String
    field :description, String
    field :url, String
    field :image, Types::ImageType

    def image
      OpenStruct.new(url: self.object.image_url)
    end
  end
end
