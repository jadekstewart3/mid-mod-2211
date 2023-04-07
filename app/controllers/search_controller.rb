class SearchController < ApplicationController
  def index
    @foods = foods_list
  end

  private
  def foods_list
    @foods ||= SearchFacade.new
  end
end