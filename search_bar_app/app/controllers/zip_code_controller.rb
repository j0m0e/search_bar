class ZipCodeController < ApplicationController
  def show
  @zip_code = ZipCode.new
  end
  
  def search
  redirect_to sessions_path if params[:search] == ""
  @search_results = SearchAPI.search_by_term(params[:search])
  end

  private

  def zip_code_params
    params.require(:zip_code).permit(:zip_code)
  end
  
end
