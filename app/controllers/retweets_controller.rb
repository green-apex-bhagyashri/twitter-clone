class RetweetsController < ApplicationController
	before_action :set_tweet

	def create
		@comment = @tweet.retweets.new(retweet_params)
		@comment.user_id = current_user.id
		if @comment.save
			redirect_to @tweet
		end
	end	

	private
	 def retweet_params
	 	params.require(:retweet).permit(:content, :user_id, :tweet_id)
	 end

	def set_tweet
		@tweet = Tweet.find(params[:tweet_id])
	end	
end
