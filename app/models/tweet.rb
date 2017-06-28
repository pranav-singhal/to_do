class Tweet < ActiveRecord::Base



  def liked_count tweet_id

    Like.where(tweet_id: tweet_id).length

  end

  def liked_by_user tweet_id, user_id

    Like.where(tweet_id: tweet_id, user_id: user_id).length >0
  end

end
