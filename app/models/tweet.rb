class Tweet < ApplicationRecord
  belongs_to :user
  has_many :retweets
  belongs_to :tweet, optional: true

  def tweet_type
    if tweet_id? && description?
      "quote-tweet"
    elsif tweet_id?
      "retweet"
    else
      "tweet"
    end
  end
end
