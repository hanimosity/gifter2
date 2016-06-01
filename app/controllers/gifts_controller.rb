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
    @gift.important_date_id = params[:important_date_id]
    @gift.friends_holiday_id = params[:friends_holiday_id]
    @gift.year_given = params[:year_given]
    @gift.description = params[:description]
    @gift.name = params[:name]

    if @gift.save
      redirect_to "/gifts", :notice => "Gift created successfully."
    else
      render 'new'
    end
  end

  def edit
    @gift = Gift.find(params[:id])
  end

  def update
    @gift = Gift.find(params[:id])

    @gift.important_date_id = params[:important_date_id]
    @gift.friends_holiday_id = params[:friends_holiday_id]
    @gift.year_given = params[:year_given]
    @gift.description = params[:description]
    @gift.name = params[:name]

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
