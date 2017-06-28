class UsersController < ApplicationController
  def submit_signin
    password = params["password"]
    email = params["email"]

     user = User.find_by_email(email)

    if user
        if user.password == password
            session[:user_id] = user.id
            return redirect_to '/users/index'
        else
            return redirect_to '/users/signin'
        end

    else
        return redirect_to '/users/signup'

    end
  end

  def signin
  end

  def signup
  end

  def submit_signup
    password = params["password"]
        email = params["email"]
        username = params["username"]

        user = User.where(email: email).first

        if user
            return redirect_to '/users/singup'
        else
            user = User.new
            user.username = username
            user.email = email
            user.password = password
            user.save
            return redirect_to '/users/signin'

        end

  end



  def signout
    session[:user_id]=nil
    return redirect_to "/users/signin"
  end

  def index
    @tweets=Tweet.all()
    @users=User.all()
    if session[:user_id].nil?
      return redirect_to "/users/signin"
    end

  end




end
