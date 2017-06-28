class TweetsController < ApplicationController

def post
  user=User.where(id: session[:user_id]).first
  puts params
  tweet_value=params["tweet"]
  tweet=Tweet.new
  tweet.user_id=session[:user_id]
  tweet.Tweet_content=tweet_value
  tweet.tweeter=user.username
  tweet.save
  return redirect_to "/users/index"

end

def like
  tweetid= params['tweet_id'].to_i
  puts tweetid
  puts 'look here!'
  like=Like.where(user_id: session[:user_id], tweet_id: tweetid).first
  unless like
    like=Like.new
    like.tweet_id=tweetid
    like.user_id= session[:user_id]
    like.save
  else
    like.destroy
  end

  return redirect_to "/users/index"
end




end
