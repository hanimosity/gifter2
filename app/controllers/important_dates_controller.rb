class ImportantDatesController < ApplicationController
  def index
    @important_dates = ImportantDate.all
  end

  def show
    @important_date = ImportantDate.find(params[:id])
  end

  def new
    @important_date = ImportantDate.new
  end

  def create
    @important_date = ImportantDate.new
    @important_date.reminder = params[:reminder]
    @important_date.friend_id = params[:friend_id]
    @important_date.card = params[:card]
    @important_date.traditions = params[:traditions]
    @important_date.name = params[:name]
    @important_date.date = params[:date]

    if @important_date.save
      redirect_to "/friends/", :notice => "Important date created successfully."
    else
      render 'new'
    end
  end

  def edit
    @important_date = ImportantDate.find(params[:id])
  end

  def update
    @important_date = ImportantDate.find(params[:id])

    @important_date.reminder = params[:reminder]
    @important_date.friend_id = params[:friend_id]
    @important_date.card = params[:card]
    @important_date.traditions = params[:traditions]
    @important_date.name = params[:name]
    @important_date.date = params[:date]

    if @important_date.save
      redirect_to "/friends/", :notice => "Important date updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @important_date = ImportantDate.find(params[:id])

    @important_date.destroy

    redirect_to "/important_dates", :notice => "Important date deleted."
  end
end
