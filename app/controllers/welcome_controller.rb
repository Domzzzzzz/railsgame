class WelcomeController < ApplicationController
# controller allows model to communicate with the view
# this app allows a user to enter their name and register it in the database 
  def register
    if params.has_key?(:user_name) && !params[:user_name].strip.empty?
      user_name = params[:user_name].strip
      # save user to database - Uppercase 'User' is the class name
      user = User.new
      user.name = user_name
      user.save
      # store user ID in session
      session[:user_id] = user.id.to_s
      # render text: "User ID is " + user.id.to_s
      # redirect to game (play.html.erb)
      redirect_to '/game/play'
    else
      # Ask for name
      render 'register'
    end
  end
end # end of class
