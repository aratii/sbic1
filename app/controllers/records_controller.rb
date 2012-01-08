class RecordsController < ApplicationController

  def new
    @record = Record.new
    @title = "Record"
  end
  
  def create
    @record = Record.new(params[:record])
    if @record.save
      flash[:success] = "Successfully added!"
      redirect_to @record
    else
      @title = "Record"
      render 'new'
    end
  end

  def show
    @record = Record.find(params[:id])
  end
end
