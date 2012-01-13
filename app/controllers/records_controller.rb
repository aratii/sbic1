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

  def index
    @title = "All records"
    @records = Record.paginate(:page => params[:page])
  end

  def show
    @record = Record.find(params[:id])
  end

  def destroy
    Record.find(params[:id]).destroy
    flash[:success] = "Record destroyed."
    redirect_to records_path
  end

end
