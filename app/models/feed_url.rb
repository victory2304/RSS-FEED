class FeedUrl < ActiveRecord::Base
  attr_accessible :feed_url
  has_many :feed_entries,:foreign_key => "feed_url_id"
end
