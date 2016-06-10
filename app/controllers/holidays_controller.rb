class HolidaysController < ApplicationController

  def index
      @holidays = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new
    @holiday.name = params[:name]
    date = params[:date]
    current_year = Date.today.year
    @holiday.date = date+" "+current_year.to_s
    @holiday.date = @holiday.date.to_date
    @holiday.date = params[:date]
    @holiday.traditions = params[:traditions]

    if @holiday.save
      redirect_to :back, :notice => "Holiday created successfully."
    else
      render 'new'
    end
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])

    @holiday.name = params[:name]
    @holiday.date = params[:date]
    @holiday.traditions = params[:traditions]

    if @holiday.save
      redirect_to :back, :notice => "Holiday updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @holiday = Holiday.find(params[:id])

    @holiday.destroy

    redirect_to :back, :notice => "Holiday deleted."
  end
end
