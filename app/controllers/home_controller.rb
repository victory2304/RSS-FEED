class HomeController < ApplicationController
  def index
  	@sample_feed = Feedjira::Feed.fetch_and_parse('http://feeds.feedburner.com/NDTV-Cricket')
  end
end
