class FriendsDatesController < ApplicationController
  def index
    @friends_dates = FriendsDate.all
  end

  def show
    @friends_date = FriendsDate.find(params[:id])
    @gift = Gift.new
  end

  def new
    @friends_date = FriendsDate.new
  end

  def create
    @friends_date = FriendsDate.new
    @friends_date.description = params[:description]
    @friends_date.traditions = params[:traditions]
    reminder = params[:reminder]
    current_year = Date.today.year
    @friends_date.reminder = reminder+" "+current_year.to_s
    @friends_date.reminder = @friends_date.reminder.to_date
    @friends_date.date = params[:date]
    @friends_date.important_date_id = params[:important_date_id]
    @friends_date.friend_id = params[:friend_id]
    @friends_date.user_id = params[:user_id]

    if @friends_date.save
      redirect_to :back, :notice => "Friends date created successfully."
    else
      render 'new'
    end
  end

  def edit
    @friends_date = FriendsDate.find(params[:id])
  end

  def update
    @friends_date = FriendsDate.find(params[:id])

    @friends_date.description = params[:description]
    @friends_date.traditions = params[:traditions]
    @friends_date.reminder = params[:reminder]
    @friends_date.date = params[:date]
    @friends_date.important_date_id = params[:important_date_id]
    @friends_date.friend_id = params[:friend_id]
    @friends_date.user_id = params[:user_id]

    if @friends_date.save
      redirect_to :back, :notice => "Friends date updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @friends_date = FriendsDate.find(params[:id])

    @friends_date.destroy

    redirect_to "/friends_dates", :notice => "Friends date deleted."
  end
end
