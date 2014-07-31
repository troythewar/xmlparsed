class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.string :title
      t.text :summary
      t.string :article_url
      t.string :image_url
      t.string :published_at
      t.string :guid

      t.timestamps
    end
  end
end
