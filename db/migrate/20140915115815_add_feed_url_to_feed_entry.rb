class AddFeedUrlToFeedEntry < ActiveRecord::Migration
  def change
    add_column :feed_entries, :feed_url, :string
  end
end
