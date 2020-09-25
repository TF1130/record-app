class RecordsController < ApplicationController
  def create
    @record = Record.create(records_params)
    redirect_to action: :index
  end

  def new
    @record = Record.new(records_params)
    if @record.save(records_params)
      redirect_to root_path
    end

  end

  def update

  end

  def show
    @record = Record.new(records_params)
    @record = Record.find(params[:id])

  end

  def index
    month_date
    @records = Record.new
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to root_path
  end

  private

  def records_params
    params.permit(:date,:breakfast,:lunch,:dinner,:coffeebreak)
  end

  def month_date
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_date = Date.today

    @week_days = []

    @records = Record.where(date: @todays_date..@todays_date + 14)

    14.times do |x|
      records = []
      record = @records.map do |record|
        records.push(record) if record.date == @todays_date + x
      end
      days = { month: (@todays_date + x).month, date:  (@todays_date + x).day, wday: wdays[(@todays_date + x).strftime('%w').to_i], records: records}
      @week_days.push(days)
    end
  end
end
