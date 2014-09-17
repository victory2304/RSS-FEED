class FeedSweeper < ActionController::Caching::Sweeper
  observe Feed
  
  def after_save(feed)
    expire_cache(feed)
  end
  
  def after_destroy(feed)
    expire_cache(feed)
  end
  
  def expire_cache(feed)
    expire_action
  end
end