class FriendsHolidaysController < ApplicationController
  def index
    @friends_holidays = FriendsHoliday.all
  end

  def show
    @friends_holiday = FriendsHoliday.find(params[:id])
    @gift = Gift.new
  end

  def new
    @friends_holiday = FriendsHoliday.new
  end

  def create
    @friends_holiday = FriendsHoliday.new
    @friends_holiday.traditions = params[:traditions]
    @friends_holiday.reminder = params[:reminder]
    @friends_holiday.friend_id = params[:friend_id]
    @friends_holiday.holiday_id = params[:holiday_id]
    @friends_holiday.user_id = params[:user_id]

    if @friends_holiday.save
      redirect_to :back, :notice => "Friends holiday created successfully."
    else
      render 'new'
    end
  end

  def edit
    @friends_holiday = FriendsHoliday.find(params[:id])
  end

  def update
    @friends_holiday = FriendsHoliday.find(params[:id])

    @friends_holiday.traditions = params[:traditions]
    @friends_holiday.reminder = params[:reminder]
    @friends_holiday.friend_id = params[:friend_id]
    @friends_holiday.holiday_id = params[:holiday_id]
    @friends_holiday.user_id = params[:user_id]

    if @friends_holiday.save
      redirect_to :back, :notice => "Friends holiday updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @friends_holiday = FriendsHoliday.find(params[:id])

    @friends_holiday.destroy

    redirect_to "/friends_holidays", :notice => "Friends holiday deleted."
  end
end
