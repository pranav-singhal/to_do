class User < ActiveRecord::Base

  def followed_by_user user_id, followed_id
    FollowedUser.where(user_id: user_id, followed_user_id: followed_id).length >0
  end




end
