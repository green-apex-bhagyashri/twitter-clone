class AddTweetIdToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :tweet_id, :integer
  end
end
