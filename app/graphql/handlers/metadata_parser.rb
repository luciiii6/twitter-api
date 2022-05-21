require 'nokogiri'
require 'open-uri' 

module Handlers
  class MetadataParser
    class << self
      def get_metadata(url)
      # Load content from URL
        hash = Hash.new
        doc = Nokogiri::HTML(URI.open(url))
        hash[:url] = doc.xpath('//meta[@property="og:url"]').first['content']
        hash[:title] = doc.xpath('//meta[@property="og:title"]').first['content']
        hash[:image_url] = doc.xpath('//meta[@property="og:image"]').first['content']
        hash[:description] = doc.xpath('//meta[@property="og:description"]').first['content']

        hash
      end
    end
  end
end