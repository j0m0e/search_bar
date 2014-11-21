class ZipCodeController < ApplicationController

  def index
    @zipcodes = zipcode.all
  end

  def show
    @zipcode = zipcode.find(params[:id])
  end

  def new
    @zipcode = zipcode.new
  end

  def create
    @zipcode = zipcode.new(zipcode_params)
    @zipcode.user_id = session[:current_user_id]
    if @zipcode.save
      redirect_to @zipcode
    else
      render :new
    end
  end

end
