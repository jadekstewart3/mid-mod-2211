require "rails_helper"
RSpec.describe SearchService do 
  describe "food_search" do

    let(:foods) { SearchService.new.food_search("cheddar cheese") }
    it "returns a json object" do
      require 'pry'; binding.pry
      expect(foods).to be_a(Hash)
    end
  end
end