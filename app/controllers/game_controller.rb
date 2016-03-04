class GameController < ApplicationController

  def play
    @user = User.find(session[:user_id])
  end

end # end of class
