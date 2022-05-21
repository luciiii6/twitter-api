module Handlers
  class ContentParser
    class << self
      def get_urls(content)
        URI.extract(content, ['http', 'https'])
      end
    end
  end
end