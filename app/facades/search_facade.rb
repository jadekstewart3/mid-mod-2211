class SearchFacade
  def food_list(food)
    foods = SearchService.new.food_search(food)
    foods[:foods].map do |food|
      Food.new(food)
    end
  end
end