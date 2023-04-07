class SearchController < ApplicationController
  def index
    @foods = foods_list.food_list(params[:q])
  end

  private
  def foods_list
    @foods ||= SearchFacade.new
  end
end