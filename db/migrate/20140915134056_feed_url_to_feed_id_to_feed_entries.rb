class FeedUrlToFeedIdToFeedEntries < ActiveRecord::Migration
  def up
    remove_column :feed_entries, :feed_url
    add_column :feed_entries, :feed_url_id, :integer
  end

  def down
    add_column :feed_entries, :feed_url, :string
    remove_column :feed_entries, :feed_url_id
  end
end
