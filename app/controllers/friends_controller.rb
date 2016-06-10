class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
    @friends_holiday = FriendsHoliday.new
    @friends_date = FriendsDate.new
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new
    @friend.user_id = params[:user_id]
    @friend.photo = params[:photo]
    @friend.dislikes = params[:dislikes]
    @friend.name = params[:name]
    @friend.likes = params[:likes]

    if @friend.save
      redirect_to "/friends", :notice => "Friend created successfully."
    else
      render 'new'
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])

    @friend.user_id = params[:user_id]
    @friend.photo = params[:photo]
    @friend.dislikes = params[:dislikes]
    @friend.name = params[:name]
    @friend.likes = params[:likes]

    if @friend.save
      redirect_to "/friends", :notice => "Friend updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @friend = Friend.find(params[:id])

    @friend.destroy

    redirect_to "/friends", :notice => "Friend deleted."
  end
end
