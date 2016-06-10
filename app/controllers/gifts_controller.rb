class GiftsController < ApplicationController
  def index
    @gifts = Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new
    @gift.friend_id = params[:friend_id]
    @gift.friends_date_id = params[:friends_date_id]
    @gift.friends_holiday_id = params[:friends_holiday_id]
    @gift.year_given = params[:year_given]
    @gift.description = params[:description]
    @gift.name = params[:name]
    @gift.user_id = params[:user_id]

    if @gift.save
      redirect_to :back, :notice => "Gift created successfully."
    else
      render 'new'
    end
  end

  def edit
    @gift = Gift.find(params[:id])
  end

  def update
    @gift = Gift.find(params[:id])

    @gift.friend_id = params[:friend_id]
    @gift.friends_date_id = params[:friends_date_id]
    @gift.friends_holiday_id = params[:friends_holiday_id]
    @gift.year_given = params[:year_given]
    @gift.description = params[:description]
    @gift.name = params[:name]
    @gift.user_id = params[:user_id]

    if @gift.save
      redirect_to "/gifts", :notice => "Gift updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @gift = Gift.find(params[:id])

    @gift.destroy

    redirect_to "/gifts", :notice => "Gift deleted."
  end
end
