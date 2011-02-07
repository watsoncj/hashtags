class TweetsController < ApplicationController
  def show
    page = params[:page] or 1
    search = Twitter::Search.new
    @tweets = search.hashtag("poopin").language("en").per_page(10).page(page).fetch
  end
end
