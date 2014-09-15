class FeedController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@feeds = FeedEntry.all(:limit => 50, :order => "published_at desc")
  end
  def new
  	@feed_url = FeedUrl.new
  end
  def create
  	@feed_url = FeedUrl.create(:feed_url => params[:feed_entry][:feed_url])
  	@feed_entry = FeedEntry.update_from_feed(params[:feed_entry][:feed_url],@feed_url.id)
  	redirect_to all_feed_url_feed_index_path
  end
  def show
  	@feeds = FeedEntry.where(:feed_url_id => params[:id])
  end
  def all_feed_url
  	@feed_urls = FeedUrl.all
  end
end
