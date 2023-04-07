require "rails_helper"

RSpec.describe Food do 
  describe "#initialize" do 
    before :each do 
      foods = SearchFacade.new.food_list("cheddar cheese")
      @food = foods.first
    end
    it "exists" do 
      expect(@food).to be_a(Food)
    end

    it "has attributes" do
      expect(@food.upc).to eq("75925306223")
      expect(@food.description).to eq("CHEDDAR CHEESE")
      expect(@food.brand).to eq("Three Square Inc.")
      expect(@food.ingredients).to eq("CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR).")
    end
  end
end