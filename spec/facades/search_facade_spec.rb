require "rails_helper"

RSpec.describe SearchFacade do
  describe "#food_list" do
    it "returns a list of foods based on the search" do
      foods = SearchFacade.new.food_list("cheddar cheese")

      food = foods.first
      expect(food.upc).to be_a(String)
      expect(food.description).to be_a(String)
      expect(food.brand).to be_a(String)
      expect(food.ingredients).to be_a(String)
    end
  end
end