class NasaController < ApplicationController
  def index
    @feeds = FeedEntry.all

  end
end
