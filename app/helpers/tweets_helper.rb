module TweetsHelper
  require 'rubygems'
  require 'action_view'
  include ActionView::Helpers::DateHelper

  def easy_time(time)
    time_ago_in_words(time)
  end

  def fix_date(str)
    easy_time(DateTime.parse(str))
  end
end
