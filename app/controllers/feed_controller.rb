class FeedController < ApplicationController
  before_filter :authenticate_user!
  caches_action :index, :show
  def index
  	@feeds = FeedEntry.where(:user_id => current_user.id).limit(50).order("published_at desc")
  end
  def new
  	@feed_url = FeedUrl.new
  end
  def create
  	@feed_url = FeedUrl.create(:feed_url => params[:feed_url][:feed_url],:user_id => current_user.id)
  	@feed_entry = FeedEntry.update_from_feed(params[:feed_url][:feed_url],@feed_url.id,current_user.id)
    expire_action
  	redirect_to all_feed_url_feed_index_path
  end
  def show
  	@feeds = FeedEntry.where(:feed_url_id => params[:id],:user_id => current_user.id)
  end
  def all_feed_url
  	@feed_urls = FeedUrl.where(:user_id => current_user.id)
  end
end
