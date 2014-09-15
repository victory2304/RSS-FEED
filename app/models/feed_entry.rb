class FeedEntry < ActiveRecord::Base
  attr_accessible :guid, :name, :published_at, :summary, :url,:feed_url_id
  belongs_to :feed_url 
  def self.update_from_feed(feed_url,id)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries,id)
  end

  def self.add_entries(entries,id)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id,
          :feed_url_id  => id
        )
      end
    end
  end
end
