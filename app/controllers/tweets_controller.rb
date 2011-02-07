class TweetsController < ApplicationController
  def show
    search = Twitter::Search.new
    @tweets = search.hashtag("poopin").language("en").no_retweets.per_page(10).fetch
  end
end
