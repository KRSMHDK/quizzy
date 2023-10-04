# app/services/wikipedia_content_scraper.rb
require 'open-uri'

class WikipediaContentScraper
  def self.generate
    new.generate
  end

  def generate
    raise NotImplementedError, "'generate' method should be implemented"
  end
end
