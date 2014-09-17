class AddUserIdToFeedUrlAndFeedEntry < ActiveRecord::Migration
 def up
    add_column :feed_entries, :user_id, :integer
    add_column :feed_urls, :user_id, :integer
  end

  def down
    remove_column :feed_entries, :user_id
    remove_column :feed_urls, :user_id
  end
end
