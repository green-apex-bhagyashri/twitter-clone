class Retweet < ApplicationRecord
  belongs_to :tweet


  def user_name
    if self.user_id.present?
      @user = User.find_by(id: self.user_id)
      @user.email
    end
  end
end
