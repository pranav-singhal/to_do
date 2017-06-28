class FolloweduserController < ApplicationController



  def followuser
    userid=params["userid"].to_i
    followed_user=FollowedUser.where(user_id: session[:user_id], followed_user_id: userid).first
    unless followed_user
      followed_user= FollowedUser.new
      followed_user.user_id=session[:user_id]
      followed_user.followed_user_id=userid
      followed_user.save
    else
      followed_user.destroy
    end
    return redirect_to '/users/index'




  end



end
