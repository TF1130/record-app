class RecordsController < ApplicationController
  def create
    @records = Record.new
  end

  def new
    @records = Record.new 
    if @records.save
    # redirect_to root_path
    end
  end
  def index
    @records = Record.all
  end

  private

  def records_params
    params.require(:record).permit(:content,:breakfast,:lunch,:dinner,:coffeebreak)
  end
end
