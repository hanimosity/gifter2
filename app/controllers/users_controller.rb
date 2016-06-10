class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def mywall
    @user = current_user.id
    from=Date.today
    to=from+30
    @range=from..to
  end


end
