class FeedUrl < ActiveRecord::Base
  attr_accessible :feed_url,:user_id
  has_many :feed_entries,:foreign_key => "feed_url_id"
end
