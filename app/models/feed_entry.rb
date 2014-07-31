class FeedEntry < ActiveRecord::Base

  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse feed_url
    feed.entries.each do |entry|
      unless exists? :guid => entry.entry_id
        create!(
            :title        => entry.title,
            :summary      => entry.summary,
            :article_url  => entry.url,
            :image_url    => entry.enclosure_url,
            :published_at => entry.published,
            :guid         => entry.entry_id
        )
      end
    end
  end

end
